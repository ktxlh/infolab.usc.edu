FROM ubuntu:latest

# Set non-interactive frontend
ENV DEBIAN_FRONTEND=noninteractive

# Set locale and environment variables
ENV LANG=en_US.UTF-8 \
    LANGUAGE=en_US:en \
    LC_ALL=en_US.UTF-8 \
    JEKYLL_ENV=production

# Fix legacy format warning
LABEL MAINTAINER="Amir Pourmand"

# One single RUN layer for all system dependencies
RUN apt-get update -y && apt-get install -y --no-install-recommends \
    # Locale support
    locales \
    # Jekyll dependencies
    ruby-full \
    imagemagick \
    jupyter-nbconvert \
    # Build tools for native gems (build-essential, g++, python)
    build-essential \
    g++ \
    python3 \
    zlib1g-dev \
    # mini_racer dependencies
    libv8-dev \
    nodejs \
    yarn \
    # Utilities
    inotify-tools \
    procps \
    && \
    # Setup locale
    sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && \
    locale-gen && \
    # Clean up apt cache
    apt-get clean && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

# Install Bundler
RUN gem install bundler

# Set up work directory
RUN mkdir /srv/jekyll
WORKDIR /srv/jekyll

# Add Gemfile (and Gemfile.lock if it exists)
# Your script deletes Gemfile.lock, but it's best practice to commit it
# and copy it here for reproducible builds.
ADD Gemfile* /srv/jekyll/

# We removed the 'bundle config' line, it's no longer needed
# after removing jekyll-minifier from the Gemfile.

# Install gems
RUN bundle install --no-cache

# Expose port
EXPOSE 8080

# Add entrypoint
COPY bin/entry_point.sh /tmp/entry_point.sh

# Run
CMD ["/tmp/entry_point.sh"]