class SiteController < ApplicationController
  before_action :ip_authorized?, only: [:last_stat_record, :upload_stats]
	skip_before_action :verify_authenticity_token, only: :upload_stats

  def splash
    @first_five_games_next = Stat.order(:id).first(5).each.map { |g| g.next_game? }

    if @first_five_games_next.count(true) >= 2 
      @next_game = Stat.order(:id).where(next_game?: true).first
      @games = Stat.first(5)
    else
      @next_game = Stat.order(:id).where(next_game?: true).first
      @games = Stat.where(id: (@next_game.id - 4)..(@next_game.id)).order(:id)
    end

    @joel_tweets = joel_on_twitter()
    @tweets_joel = twitter_on_joel()
    @season      = Season.find(1)
  end

  ### RASPI
  ### TODO: make raspberry pi class
  def last_stat_record
    # Stat.find(game date) # (runs in the morning... use yesterday's date)
    # in scrape, verify the date matches
  	last_stat_record = Stat.last
  	render json: last_stat_record.to_json, :status => 200
  end

  def upload_stats
    # verify the date match! (see last_stat_record() above)
    # record = Stat.find_by(game_date)
    # record.update
  	record = Stat.create(
  		# game_date:  params['site']['GAME_DATE'],
  		# opp:        params['site']['OPP'],
  		score:      params['site']['SCORE'],
  		min:        params['site']['MIN'],
  		fgm_fga:    params['site']['FGM_FGA'],
  		fg_prct:    params['site']['FG_PRCT'],
  		three_m_a:  params['site']['THREE_M_A'],
  		three_prct: params['site']['THREE_PRCT'],
  		ftm_fta:    params['site']['FTM_FTA'],
  		ft_prct:    params['site']['FT_PRCT'],
  		reb:        params['site']['REB'],
  		ast:        params['site']['AST'],
  		blk:        params['site']['BLK'],
  		stl:        params['site']['STL'],
  		pts:        params['site']['PTS']
  	)

  	render :nothing => true, :status => 200
    # TODO: error msg / code
  end

  def twitter_initialize
  	Twitter::REST::Client.new do |config|
  		config.consumer_key =        ENV['CONSUMER_KEY']
  		config.consumer_secret =     ENV['CONSUMER_SECRET']
  		config.access_token =        ENV['ACCESS_TOKEN']
  		config.access_token_secret = ENV['ACCESS_SECRET']
  	end
  end

  def joel_on_twitter
  	twitter_initialize.user_timeline('joelembiid', count: 20)
  end

  def refresh_joel_on_twitter
    @joel_tweets = twitter_initialize.user_timeline('joelembiid', count: 20)
    render :partial => 'joel_on_twitter'
  end

  def twitter_on_joel
    twitter_initialize.search('to:joelembiid', result_type: 'recent').take(20)    
  end

  def refresh_twitter_on_joel
    @tweets_joel = twitter_initialize.search('to:joelembiid', result_type: 'recent').take(20)
    render :partial => 'twitter_on_joel'
  end

  def instagram
    # <a href="" class="insta-btn">flip to 'GRAMS</a>
  end

  private

  def ip_authorized?
    # unless ENV['RASPI'] == request.remote_ip && ENV['SECRET'] == params[:secret]
    unless ENV['SECRET'] == params[:secret]

      puts "******************************"
      puts request
      puts request.inspect
      puts request.remote_ip.inspect
      puts
      puts "******************************"

      # TODO: email alert
      respond_to do |format|
        format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
        format.xml  { head :not_found }
        format.any  { head :not_found }
      end
    end
  end
  
end
