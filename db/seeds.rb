# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(login_id: "stevenhuang", english_name: "Steven Huang", email: "stevenhuang@hipad.com", employee_id: 1, password: "stevenhuang") #id = 1
User.create(login_id: "raymondfan", english_name: "Raymond Fan", email: "raymondfan@hipad.com", employee_id: 2, password:"raymondfan") #id = 2
User.create(login_id: "terrylo", english_name: "Terry Lo", email: "terrylo@hipad.com", employee_id: 3, password: "terrylo") #id = 3
User.create(login_id: "brianlee", english_name: "Brian Lee", email: "brianlee@hipad.com", employee_id: 4, password: "brianlee") #id = 4

Task.create(title: "DRM porting", submitter_id: 1, owner_id: 3, plan: "Porting DRM before M8005 ship")
Task.create(title: "CTS all pass", submitter_id: 2, owner_id: 1, plan: "Make sure CTS 100% pass")