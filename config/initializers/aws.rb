


CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJPRXBC2RABOX4MMA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'hoola'                          # required
end