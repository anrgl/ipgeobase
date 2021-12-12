# frozen_string_literal: true

lorem_ipsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
Task.create!(name: 'Task #1', description: lorem_ipsum, creator: 'PM', performer: 'DEV')
Task.create!(name: 'Task #2', description: lorem_ipsum, creator: 'PM', performer: 'DEV')
Task.create!(name: 'Task #3', description: lorem_ipsum, creator: 'PM', performer: 'DEV')
