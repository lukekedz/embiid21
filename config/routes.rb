Rails.application.routes.draw do

  root 'site#splash'
  get  'site/last_stat_record'
  get  'site/carousel'
  post 'site/upload_stats'

end
