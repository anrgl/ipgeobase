# frozen_string_literal: true

lorem_ipsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nisl nibh, aliquam vel cursus a, porta eu augue. Suspendisse vel vulputate diam. Duis tempus diam nec viverra viverra. Aenean dolor justo, lacinia at odio a, tempor ullamcorper orci. Morbi faucibus nec erat eu elementum. Integer augue neque, convallis eu sollicitudin in, maximus nec nunc. Vestibulum non lacinia dolor. Maecenas hendrerit lacinia nulla sit amet feugiat.'
Task.create!(name: 'Task #1', description: lorem_ipsum, creator: 'PM', performer: 'DEV')
Task.create!(name: 'Task #2', description: lorem_ipsum, creator: 'PM', performer: 'DEV')
Task.create!(name: 'Task #3', description: lorem_ipsum, creator: 'PM', performer: 'DEV')
