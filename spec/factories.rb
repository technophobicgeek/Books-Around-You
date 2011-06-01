require 'factory_girl'

Factory.define :user do |u|
  u.name      "PlusBzz"
  u.nickname  "plusbzz"
  u.email     "plusbzz@example.com"
  u.password  "bzz"
end

Factory.define :book do |b|
  b.isbn10  "031608106X"
  b.isbn13  "978-0316081061"
end

Factory.define :copy do |c|
  c.association :book
  c.association :user
  c.condition   "Very Good"
  c.description 'Totally Awesome Zombie Novel!'
end
