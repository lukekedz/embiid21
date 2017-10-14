Rails.application.routes.draw do
  root 'site#splash'
  get  'site/refresh_joel_on_twitter'
  get  'site/refresh_twitter_on_joel'

  # rapsi
  get  'site/last_stat_record'
  post 'site/upload_stats'
end
