Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get "/first_class_apps" => "api/first_class_apps#exercise"
  get "/zen_url" => "api/first_class_apps#fortune"
  get "/lotto_url" => "api/first_class_apps#lotto_action"
end

