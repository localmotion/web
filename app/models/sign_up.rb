class SignUp < ActiveRecord::Base
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_format_of :email, 
                      multiline: true,
                      with: EmailRegex::EMAIL_ADDRESS_REGEX
end
