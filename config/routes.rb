Rails.application.routes.draw do
  root 'site#splash'
  # get  'site/carousel'

  # rapsi
  get  'site/last_stat_record'
  post 'site/upload_stats'
end
