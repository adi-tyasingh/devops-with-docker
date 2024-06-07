FROM ruby:3.1.0
EXPOSE 3000
WORKDIR /usr/src/app
RUN gem install bundler:2.3.3
COPY Gemfile* ./
RUN bundle install
COPY . . 
RUN rails db:migrate RAILS_ENV=production 
RUN rake assets:precompile 
CMD ["rails", "s", "-e", "production"]
