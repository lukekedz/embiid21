date = ['Wed 10/4', 'Fri 10/6', 'Mon 10/9', 'Wed 10/11', 'Fri 10/13']
team = ['vsMEM', 'vsBOS', '@BOS', '@BRK', 'vsMIA']

5.times do |i|
    Stat.create(
    	game_date:       date[i], 
        opp:             team[i],
        score:           'n/a',
        min:             'n/a',   
        fgm_fga:         'n/a',    
        fg_prct:         'n/a',    
        three_m_a:       'n/a',
        three_prct:      'n/a',  
        ftm_fta:         'n/a',     
        ft_prct:         'n/a',     
        reb:             'n/a',        
        ast:             'n/a',        
        blk:             'n/a',         
        stl:             'n/a',         
        pts:             'n/a',
        video_id:        'oG9o_1FbzGU',
        player_giphy_id: 'alaGWsSrlo1Gw',
        game_giphy_id:    ''
    )
end
