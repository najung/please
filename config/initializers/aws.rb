


CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     "AKIAII4VB3OJDYHZOMLA",                        # required
    aws_secret_access_key: "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",                    # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'aftersquat'                          # required
end
