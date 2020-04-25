# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: "This course introduces various Web technologies used to develop advanced Web based applications applying industry best practices. We start with the basics of displaying, laying out content, and styling with HTML5 and CSS3. Web pages are styled to respond to various screen sizes using CSS libraries such as Bootstrap. We program the browser with JavaScript, but quickly move on to jQuery to deal with browser and JavaScript language fragmentation. Single page applications and component based development are introduced as the modern Web application paradigm with React.js being the current most popular solution of choice. The challenge of application state management is solved with Redux. RESTful services are created with Java Web services exposing a relational data model implemented with MySQL. In the second half of the course we cover an alternative framework based entirely on JavaScript with Angular.js as front end rendering solution, Node.js as the middle tier and MongoDB as a permanent storage solution."
  )
end

puts "10 blog posts created."

5.times do |skill|
  Skill.create!(
      title: "Rails #{skill}",
      percent_utilized: 25
  )
end

puts "5 skills created."

9.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      subtitle: "My great service",
      body: "The assignments consist of building a complete Web application using various technologies. The assignments give students the opportunity to practice what is discussed in class to achieve a practical level of understanding of the concepts.",
      main_image: "https://via.placeholder.com/600x400",
      thumb_image: "https://via.placeholder.com/350x200"
  )
end
puts "9 portfolio items created."