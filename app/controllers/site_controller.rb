class SiteController < ApplicationController
    skip_before_filter :verify_authenticity_token

    def splash
    end

    def upload_stats
        record = Statistic.create(
            game_date:   params["site"]["GAME_DATE"],
            opp:         params["site"]["OPP"],
            score:       params["site"]["SCORE"],
            min:         params["site"]["MIN"],
            fgm_fga:     params["site"]["FGM_FGA"],
            fg_prct:     params["site"]["FG_PRCT"],
            three_pm_pa: params["site"]["THREE_PM_PA"],
            three_prct:  params["site"]["THREE_PRCT"],
            ftm_fta:     params["site"]["FTM_FTA"],
            ft_prct:     params["site"]["FT_PRCT"],
            reb:         params["site"]["REB"],
            ast:         params["site"]["AST"],
            blk:         params["site"]["BLK"],
            stl:         params["site"]["STL"],
            pts:         params["site"]["PTS"]
        )

        render :nothing => true, :status => 200
     end
end
