OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '209211065934129', '7c954b314a8d8e9a43073f40d24cd6f0'
end