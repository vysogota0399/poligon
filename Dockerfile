FROM arm64v8/ruby:3.1.2-alpine
ARG app_path=/usr/src/app

RUN apk --update add build-base tzdata postgresql-dev postgresql-client nodejs npm gcompat; \
    npm install --global yarn

WORKDIR ${app_path}

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .
