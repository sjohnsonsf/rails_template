FROM ruby:2.7.6

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install npm -y
RUN npm install -g n && n 0.10.33
RUN gem install bundler && bundle install
#ENTRYPOINT [ "ruby", "bin/draw_methods.rb" ]