class SiteController < ApplicationController
	skip_before_filter :verify_authenticity_token

    def splash
      @last_game = Statistic.last
      @tweets    = twitter_feed()
    end

    # def carousel
    #   @games  = Statistic.last(5)
    # 	@tweets = twitter_feed()
    # end

    ### RASPI
    ### TODO: make raspberry pi class
    def last_stat_record
    	last_stat_record = Statistic.last
    	render json: last_stat_record.to_json, :status => 200
    end

    def upload_stats
    	record = Statistic.create(
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

    private

    def twitter_initialize
    	twitter = Twitter::REST::Client.new do |config|
    		config.consumer_key =        ENV['CONSUMER_KEY']
    		config.consumer_secret =     ENV['CONSUMER_SECRET']
    		config.access_token =        ENV['ACCESS_TOKEN']
    		config.access_token_secret = ENV['ACCESS_SECRET']
    	end
    end

    def twitter_feed
    	twitter  = twitter_initialize()
    	joel     = twitter.user_timeline('joelembiid', count: 5)
      # mentions = twitter.search('to:joelembiid', result_type: 'recent').take(5)

      # tweets = joel.concat mentions

      # tweets.map do |tw| 
      #     if tw.user.screen_name == 'joelembiid'
      #         tw[:is_joel] = 'x-large'
      #     end
      # end

      # tweets.each do |tw|
      #     puts tw.user.screen_name
      #     puts tw[:is_joel]
      # end

      # (joel.concat mentions).sort! { |a,b| b.created_at <=> a.created_at }
      end
    end
