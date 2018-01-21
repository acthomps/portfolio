# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
	Topic.create!(
			title: "Topic #{topic}"
		)
end

puts "3 Topics created"

10.times do |blog|
	Blog.create!(
		title: "My Blog Post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tortor lectus, luctus in nisl a, tincidunt faucibus mi. Cras eget enim mattis, accumsan nisl nec, tempor est. Praesent cursus sit amet urna id tincidunt. Duis id erat eget tortor luctus interdum maximus sed orci. Sed dignissim vestibulum metus, ac malesuada nulla mattis vel. Praesent vel sapien tellus. Mauris id urna ut ipsum semper porttitor. Integer facilisis, velit quis egestas imperdiet, massa arcu tincidunt velit, vel cursus lorem est sed nisl.",
		topic_id: Topic.last.id
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: "15"
	)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfol.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "Nunc lectus erat, scelerisque eget felis ut, scelerisque auctor ligula. Curabitur odio nunc, interdum ac maximus sed, varius posuere est. Vestibulum auctor enim nibh, aliquam rutrum sem hendrerit quis. Morbi et posuere felis. Morbi vel tincidunt augue, nec convallis sapien. Donec non sapien nisl. Fusce ut libero mi. Vestibulum ac metus quis nisl viverra placerat ut eget ipsum. Aenean hendrerit rutrum pharetra.",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
	)
end

1.times do |portfolio_item|
	Portfol.create!(
		title: "Portfolio title: #{portfolio_item}",
		subtitle: "Angular",
		body: "Nunc lectus erat, scelerisque eget felis ut, scelerisque auctor ligula. Curabitur odio nunc, interdum ac maximus sed, varius posuere est. Vestibulum auctor enim nibh, aliquam rutrum sem hendrerit quis. Morbi et posuere felis. Morbi vel tincidunt augue, nec convallis sapien. Donec non sapien nisl. Fusce ut libero mi. Vestibulum ac metus quis nisl viverra placerat ut eget ipsum. Aenean hendrerit rutrum pharetra.",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
	)
end

puts "9 Portfolio items created"

3.times do |technology|
	Portfol.last.technologies.create!(
			name: "Tecnology #{technology}"
		)
end

puts "3 technologies created"