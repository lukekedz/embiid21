Rails.application.routes.draw do
  root 'site#splash'
  post 'site/upload_stats'
end
