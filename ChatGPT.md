You as a software developer need to prepare two environments, a development environment and a production one. Using Ruby on Rails.
The dockerfile you have is:
      # Start of Dockerfile of development
      FROM debian:stable

      RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
        && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
      ENV LANG en_US.utf8

      RUN apt-get install wget irb ruby-build

      # End of Dockerfile of development

You need to install the following gem's:
pg
docker-compose-rails

