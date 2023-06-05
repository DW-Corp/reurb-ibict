FROM ruby:3.2.2
WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler:2.4.10

RUN bundle install --jobs 4 --retry 3

COPY . .

RUN bundle exec rails webpacker:install

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]