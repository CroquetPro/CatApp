# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
cats = [Cat.new(name: "zack", sex: "M", color: "black"),
        Cat.new(name: "sara", sex: "F", color: "white"),
        Cat.new(name: "flippy", sex: "M", color: "calico"),
        Cat.new(name: "lady", sex: "F", color: "gray")]
cats.each { |cat| cat.save}
