# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_list = [
    "Danil Ishutin",
    "Jonas Somfan",
    "Ernesto Cuadros",
    "Artour Babaev",
    "Amer Barqawi"
]

post_list = [
    ["Rails Migrations", "Migrations are a convenient way to alter your database schema over time in a consistent and easy way. They use a Ruby DSL so that you don't have to write SQL by hand, allowing your schema and changes to be database independent.", 1, "rails-migrations"],
    ["Active Record", "Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic", 2, "active-records"],
    ["Ruby on Rails", "Ruby on Rails is a full-stack web framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration.", 3, "ruby-on-rails"],
    ["Ruby Gems", "RubyGems is a package manager for the Ruby programming language that provides a standard format for distributing Ruby programs and libraries, a tool designed to easily manage the installation of gems, and a server for distributing them.", 4, "ruby-gems"],
    ["Bootstrap", "Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile first projects on the web.", 5, "bootstrap"]
]

author_list.each do |author|
  Author.create( name: author )
end

post_list.each do |title, content, author_id, slug|
  Post.create( title: title, content: content, author_id: author_id, slug: slug)
end
