Rails.application.config.assets.configure do |env|
  env.cache = ActiveSupport::Cache::MemoryStore.new
end