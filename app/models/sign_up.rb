class SignUp < ActiveRecord::Base
  validates_presence_of :email
  validates_format_of :email, with: EmailRegex::EMAIL_ADDRESS_REGEX, multiline: true
end
