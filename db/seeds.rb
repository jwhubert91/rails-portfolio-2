# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# dummy data for topics
3.times do |topic_num|
	Topic.create!(
			title: "Topic #{topic_num}"
		)
end

# dummy data for blogs
10.times do |blog_num|
	Blog.create!(
		title: "Blog post #{blog_num}",
		body: "Lorem ipsum tu ne cede nalis exquisite corpse dolor",
		topic_id: Topic.last.id
		)
end

# dummy data for skills
5.times do |skill_num|
	Skill.create!(
		title: "Rails #{skill_num}",
		percent_used: 10
		)
end


# dummy data for works
9.times do |work_num|
	Work.create!(
		title: "My great service number #{work_num}",
		subtitle: "Ruby on Rails",
		body: "Lorem ipsum tu ne cede nalis exquisite corpse dolor",
		main_img: "http://placehold.it/600x400",
		thumb_img: "http://placehold.it/350x250"
		)
end

Work.create!(
		title: "Another work of great beauty",
		subtitle: "Angular",
		body: "Angular ipsum tu ne cede nalis exquisite corpse dolor",
		main_img: "http://placehold.it/600x400",
		thumb_img: "http://placehold.it/350x250"
)


# dummy data for technologies
3.times do |technology_num|
	Work.last.technologies.create!(
		name: "Technology #{technology_num}"
	)
end


