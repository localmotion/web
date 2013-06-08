require 'spec_helper'

describe SignUp do

  let(:sign_up) { SignUp.new }

  subject { sign_up }
  
  it { should be }
  it { should respond_to(:email) }

  it 'should be invalid without an email' do
    SignUp.new.valid?.should be_false
  end

  it 'should be invalid with invalid emails' do
    ['invalid', 'invalid@@email.com'].each do |invalid_email|
      SignUp.new(email: invalid_email).valid?.should be_false
    end
  end
end