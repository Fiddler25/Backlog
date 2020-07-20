Rails.application.config.generators do |g|
  g.skip_routes true
  g.helper false
  g.stylesheets false
  g.javascripts false
  g.test_framework false
  g.orm :active_record, migration: false
end