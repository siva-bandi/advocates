# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

states = ['AP', 'KA', 'TN', 'TS']

states.each do |state_name|
	state = State.find_by(name: state_name)
	if state.blank?
		State.create!(name: state_name)
	end
end
