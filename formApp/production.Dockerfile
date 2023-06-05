# Use an official Node.js runtime as a parent image
FROM node:16.13.0-alpine AS node

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Run the webpack build
RUN npm run build

# Use an official Ruby runtime as a parent image
FROM ruby:3.2.2-alpine AS ruby

# Set the working directory to /app
WORKDIR /app

# Install dependencies
RUN apk add --no-cache \
    build-base \
    postgresql-dev \
    tzdata

# Copy the Gemfile and Gemfile.lock files to the container
COPY Gemfile* ./

# Install Ruby dependencies
RUN bundle install

# Copy the application files to the container
COPY . .

# Copy the precompiled assets from the Node.js container to the Ruby container
COPY --from=node /app/public/assets /app/public/assets

# Set the Rails environment to production
ENV RAILS_ENV production

# Precompile Rails assets
RUN bundle exec rails assets:precompile

# Start the Rails server
CMD ["bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"]
