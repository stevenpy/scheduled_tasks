# TweetScheduler

TweetScheduler is a Ruby on Rails application that allows users to schedule and automatically post tweets to Twitter at specified times.

## Features

- User authentication
- Create, edit, and delete scheduled tweets
- View a list of pending and posted tweets
- Integration with Twitter API for posting tweets
- Background job processing for tweet scheduling

## Requirements

- Ruby 3.3.0 or higher
- Rails 6.1.0 or higher
- PostgreSQL
- Redis

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/stevenpy/scheduled_tasks.git
   cd scheduled_tasks
   ```

2. Install dependencies:
   ```
   bundle install
   ```

3. Set up the database:
   ```
   rails db:create db:migrate
   ```

4. Set up environment variables:
   Create a `.env` file in the root directory and add the following:
   ```
   TWITTER_CONSUMER_KEY=your_twitter_consumer_key
   TWITTER_CONSUMER_SECRET=your_twitter_consumer_secret
   TWITTER_ACCESS_TOKEN=your_twitter_access_token
   TWITTER_ACCESS_TOKEN_SECRET=your_twitter_access_token_secret
   ```

5. Start the Rails server:
   ```
   rails server
   ```

6. Start the background job processor:
   ```
   bundle exec sidekiq
   ```

## Usage

1. Sign up for an account or log in
2. Create a new scheduled tweet by specifying the content and the desired posting time
3. View and manage your scheduled tweets on the dashboard
4. The application will automatically post your tweets at the specified times
