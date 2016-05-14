Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_mailer.raise_delivery_errors = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load

  config.assets.enabled = false
  config.generators do |g|
    g.assets false
  end

  config.action_controller.action_on_unpermitted_parameters = :raise
end
