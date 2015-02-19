FROM ubuntu:14.04
MAINTAINER Daekwon Kim <propellerheaven@gmail.com>

RUN \
  apt-get -q update && \
  apt-get -q -y install 

RUN \
  add-apt-repository -y ppa:brightbox/ruby-ng && \
  apt-get -q update && \
  apt-get -q -y install ruby2.2 ruby2.2-dev && \
  gem install bundler --no-ri --no-rdoc

RUN apt-get -qq -y clean

WORKDIR /app

ADD ./Gemfile /app/Gemfile
ADD ./Gemfile.lock /app/Gemfile.lock
RUN bundle install --without development test

ADD . /app
ENV AWS_ACCESS_KEY AWS_ACCESS_KEY
ENV AWS_SECRET_KEY AWS_SECRET_KEY
ENV AWS_REGION AWS_REGION
ENV AWS_BUCKET AWS_BUCKET

ENV SERVER_PORT 80
ENV SERVER_HOST 0.0.0.0

EXPOSE 80
CMD /app/docker/run.sh
