Season.create(
  year:       '2016-2017',
  gp:         '61',
  mins:       '33',   
  pts:        '19.8',
  fgm_fga:    '7.9-14.2',    
  fg_prct:    '.556',    
  three_m_a:  '1.4-3.4',
  three_prct: '.411',  
  ftm_fta:    '11.2-14.4',     
  ft_prct:    '.778',     
  reb:        '12.6',        
  ast:        '4.1',        
  blk:        '3.2',         
  stl:        '1.3',         
)

# date = ['Wed 10/4', 'Fri 10/6', 'Mon 10/9', 'Wed 10/11', 'Fri 10/13']
# team = ['vsMEM', 'vsBOS', '@BOS', '@BRK', 'vsMIA']

# 5.times do |i|
#   Stat.create(
#     game_date:       date[i], 
#     opp:             team[i],
#     score:           'n/a',
#     min:             'n/a',   
#     fgm_fga:         'n/a',    
#     fg_prct:         'n/a',    
#     three_m_a:       'n/a',
#     three_prct:      'n/a',  
#     ftm_fta:         'n/a',     
#     ft_prct:         'n/a',     
#     reb:             'n/a',        
#     ast:             'n/a',        
#     blk:             'n/a',         
#     stl:             'n/a',         
#     pts:             'n/a',
#     video_id:        'oG9o_1FbzGU',
#     player_giphy_id: 'alaGWsSrlo1Gw',
#     game_giphy_id:   '',
#     next_game?:      i == 0 ? 'false' : 'true'
#   )
# end