FROM ruby:2.2
COPY . /app/
WORKDIR /app/
RUN bundle install
EXPOSE 80
ENTRYPOINT /usr/local/bundle/bin/shotgun -p80 -o0.0.0.0
