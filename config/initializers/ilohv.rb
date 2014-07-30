Ilohv::Engine.config.url_root = '/files'

CarrierWave.configure do |config|
  config.asset_host = 'http://localhost:3000'
end
