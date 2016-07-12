# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

# . . .

Product.create(title: 'Seven Mobile Apps in Seven Weeks',

               description:

                   %{<p>

      <em>Native Apps, Multiple Platforms</em>

      Answer the question “Can we build this for ALL the devices?” with a

      resounding YES. This book will help you get there with a real-world

      introduction to seven platforms, whether you’re new to mobile or an

      experienced developer needing to expand your options. Plus, you’ll find

      out which cross-platform solution makes the most sense for your needs.

      </p>},

               image_url: '7apps.jpg',

               price: 26.00)

# . . .