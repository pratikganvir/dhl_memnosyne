task :install_dhl_memnosyne do
  FileUtils.cp "dhl_config.yml", "#{Rails.root}/config/dhl_config.yml"
end
