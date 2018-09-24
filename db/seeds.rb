# frozen_string_literal: true

3.times do |topic|
  Topic.create!(title: "Topic #{topic}")
end

puts '3 Topics created!'

0.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
          Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
          when an unknown printer took a galley of type and scrambled it to make a type specimen book.
          It has survived not only five centuries, but also the leap into electronic typesetting,
          remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset
          sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like
           Aldus PageMaker including versions of Lorem Ipsum."
  )
end

puts '10 blog post created!'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts '5 Skills Created!'

8.times do |portfolio_item|
  Portfolio.create!(
    title: "My Porfolio #{portfolio_item}",
    subtitle: 'Ruby on Rails',
    body: "There are many variations of passages of Lorem
    Ipsum available, but the majority have suffered alteration
    in some form, by injected humour, or randomised words which don't look even slightly ",
    main_image: 'https://placeholdit.co//i/600x400',
    thumb_image: 'https://placeholdit.co//i/350x250'
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "My Porfolio #{portfolio_item}",
    subtitle: 'Angular',
    body: "There are many variations of passages of Lorem
    Ipsum available, but the majority have suffered alteration
    in some form, by injected humour, or randomised words which don't look even slightly",
    main_image: 'https://placeholdit.co//i/600x400',
    thumb_image: 'https://placeholdit.co//i/350x250'
  )
end

puts '9 portfolios created!'

3.times do |technology|
  Portfolio.last.technologies.create!(name: "Technology #{technology}")
end

puts '3 technologies created!'
