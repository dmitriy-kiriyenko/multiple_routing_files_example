MultipleRoutingFilesExample::Application.routes.draw do
  Dir[Rails.root.join("config/routing/**/*.rb")].each { |f| instance_eval(File.read(f)) }

  namespace :admin do
    concerns :admin
  end
  namespace :api do
    namespace :v1 do
      concerns :api_v1
    end
    namespace :v2 do
      concerns :api_v2
    end
  end
end
