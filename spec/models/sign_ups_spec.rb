require 'spec_helper'

describe SignUp do

  let(:sign_up) { SignUp.new }

  subject { sign_up }
  
  it { should be }
  it { should respond_to(:email) }
end