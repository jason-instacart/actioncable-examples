# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

tom   = User.create! name: 'Tom'
jen = User.create! name: 'Jen'
bob  = User.create! name: 'Bob'
mary   = User.create! name: 'Mary'

Message.create! title: 'Food', content: "What's your favorite food?" , user: tom
Message.create! title: 'Sports ', content: "Who's your MVP?", user: jen
