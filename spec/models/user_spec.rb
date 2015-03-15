require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end

  it "is valid with an email, password, and username" do
    user = User.new(
        email: 'tester@example.com',
        password: '12341234',
        username: 'Tweety'
    )
    expect(user).to be_valid
  end

  it "is invalid without an email" do
    #user = User.new(
     #   email: '',
      #  password: '12341234',
       # username: 'Tweety'
    #)
    user = build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid without a password" do
    #user = User.new(
     #   email: 'tester@example.com',
      #  password: nil,
       # username: 'Tweety'
    #)
    user = build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "is invalid without a username" do
    #user = User.new(
     #   email: 'tester@example.com',
      #  password: '12341234',
       # username: nil
    #)
    user = build(:user, username: nil)
    user.valid?
    expect(user.errors[:username]).to include("can't be blank")
  end
end