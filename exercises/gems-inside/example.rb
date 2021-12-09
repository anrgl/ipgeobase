# frozen_string_literal: true

# ## Утилита gem ##

# # gem — пакет(архив) с библиотекой или приложением
# # RubyGems — менеджер пакетов с утилитой gem для командной
# # строки для установки и запаковки Ruby библиотек и приложений

# # Установка гема
# gem install rails

# # Установить определенную версию библиотеки
# gem install rails --version 5.0

# # Поиск среди доступных гемов
# gem search -r rails

# # Для просмотра всех локально установленных гемов:
# gem list

# # Чтобы получить (очень длинный) список всех гемов, доступных на RubyGems.org:
# gem list -r

# # Документация
# gem help

# ## Bundler ##

# # Инициализация
# bundle init

# # Gemfile

# source :rubygems

# gem "nokogiri", "1.5.0"
# gem "sinatra",  "~> 1.2.6"

# gem "wirble", :group => :development

# group :test do
#   gem "rspec",  ">= 2.6"
#   gem "ffaker", ">= 1.7"
# end

# # Установка
# bundle install # bundle install --without development test

# # Разрешение конфликтов
# require 'bundler/setup'
# Gemfile.lock

# # Запуск определенных зависимостей
# bundle exec rails -v

# # Установка напрямую из GIT
# gem 'rails', git: 'https://github.com/rails/rails.git'

# Bundler.require(:default, Rails.env)

# ## RVM ##

# # Cоздавая gemset, вы создаете новую папку, в которую можно складывать новые gem'ы,
# # будучи абсолютно уверенным, что они изолированы от ранее установленных.
# gemset

# # Минусы
# # отказ от Bundler'а сразу потребует ручной установки одинаковых версий gem'ов на всех машинах:
# # у каждого из разработчиков, на каждом сервере

# ## Создание гема ##

# gem install bundler

# bundle -v

# bundle gem test_gem

# gem build

# gem install

# gem push

# ## Homework ##
# hexlet program download rails gems-inside
# https://gitlab.com/hexlethq/programs/rails/rails-program/-/tree/master/exercises/gems-inside
# https://gitlab.com/hexlethq/programs/rails/rails-form-builder-project

# ## Links ##
# https://rubygems.org/
# https://github.com/kaize/configus
# https://bundler.io/
# https://bundler.io/guides/creating_gem.html
