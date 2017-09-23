class SiteController < ApplicationController
  # TODO: remove once Raspi is up & running again
	skip_before_filter :verify_authenticity_token

  def splash
    @last_game   = Stat.last
    @joel_tweets = joel_on_twitter()
    @tweets_joel = twitter_on_joel()
  end

  # def carousel
  #   @games  = Stat.last(5)
  # 	@tweets = twitter_feed()
  # end

  ### RASPI
  ### TODO: make raspberry pi class
  def last_stat_record
  	last_stat_record = Stat.last
  	render json: last_stat_record.to_json, :status => 200
  end

  def upload_stats
  	record = Stat.create(
  		game_date:  params['site']['GAME_DATE'],
  		opp:        params['site']['OPP'],
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
  	twitter_initialize().user_timeline('joelembiid', count: 3)
  end

  def twitter_on_joel
    twitter_initialize().search('to:joelembiid', result_type: 'recent').take(5)
  end

  def refresh_twitter
    @tweets_joel = twitter_initialize().search('to:joelembiid', result_type: 'recent').take(5)
    # @tweets_joel.each_with_index do |t, index|
    #   puts 'DISPLAYED TWEET ID: ' + params[:tweets_on_joel][index]
    #   puts 'UPDATED TWEET ID:   ' + t.id.to_s
    #   puts
    # end

    render :partial => 'twitter_on_joel'
  end
end
