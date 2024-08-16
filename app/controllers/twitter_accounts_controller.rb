class TwitterAccountsController < ApplicationController
  def index
    @twitter_accounts = Current.user.twitter_accounts
  end
end