if Rails.env.production?
 # If you want to use aws s3 bucket
 # CarrierWave.configure do |config|
 #   config.fog_provider = 'fog/aws'
 #   config.fog_credentials = {
 #       provider:                'AWS',
 #       aws_access_key_id:       Rails.application.secrets.aws['access_key_id'],
 #       aws_secret_access_key:   Rails.application.secrets.aws['secret_access_key'],
 #       region:                  Rails.application.secrets.aws['region'],
 #       host:                    Rails.application.secrets.aws['host'],
 #       endpoint:                'https://s3.amazonaws.com'
 #   }
 #   config.storage = :fog
 #   config.fog_directory  =  Rails.application.secrets.aws['fog_directory']
 #   config.fog_public     = true
 #   config.fog_attributes = { :'Cache-Control' => 'max-age=315576000' }
 # end
else
  CarrierWave.configure do |config|
    config.storage = :file
  end
end
