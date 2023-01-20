FROM ruby:3.1.2

# Instalar dependencias no SO
#
# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN useradd -ms /bin/bash final
USER final
WORKDIR /home/final/app

COPY --chown=final Gemfile* /

RUN bundle

COPY --chown=final . .

CMD [ "bundle", "exec", "puma" ]
