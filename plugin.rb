# frozen_string_literal: true

# name: discourse-custom-email-digest-enabled
# about: Custom Layout for email digest
# version: 0.1
# author: Ahmed Gagan
# url: https://github.com/Ahmedgagan/discourse-custom-email-digest-enabled

enabled_site_setting :discourse_custom_email_digest_enabled

Rails.configuration.paths['app/views'].unshift(Rails.root.join('plugins', 'discourse-custom-email-digest', 'app/views'))

after_initialize do
  # ::ActionMailer::Base.prepend_view_path File.expand_path("../app/views", __FILE__)
end
