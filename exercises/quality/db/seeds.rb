# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bulletin.create!(title: 'First', body: 'First body', published: true)
Bulletin.create!(title: 'Second', body: 'Second body', published: true)
Bulletin.create!(title: 'Third', body: 'Third body', published: false)
Bulletin.create!(title: 'Fourth', body: 'Fourth body', published: false)
Bulletin.create!(title: 'Fifth', body: 'Fifth body', published: true)