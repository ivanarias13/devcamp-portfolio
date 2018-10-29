# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
  Blog.create!(
      title: "My blog post #{blog}",
      body: "Nunc id feugiat ipsum. Mauris nunc augue, pulvinar ut tincidunt non, commodo non justo. Nam sed felis interdum, tempor quam eget, accumsan augue. Mauris volutpat augue ac libero accumsan sagittis. Pellentesque non egestas nunc. Aenean vitae ipsum accumsan, volutpat purus sit amet, consequat justo. Vestibulum elit velit, auctor non arcu ac, hendrerit auctor lorem. Aenean pretium dapibus tempor. Cras suscipit sit amet leo a lobortis. Nam ac mi eros. Maecenas ut sagittis elit, nec faucibus lorem. Nullam ultricies pretium viverra. In ut diam placerat, porta nulla eget, efficitur erat. Vestibulum a ante non arcu volutpat pellentesque. Maecenas vitae erat non magna mattis auctor vehicula sit amet metus. Sed auctor congue lacus, quis pretium lacus interdum a."
    )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 skill  created"

9.times do |portfolio_item|
  Portfolio.create!(
      title: "Portfolio title: #{portfolio_item}",
      Subtitle: "My greate service",
      body: "Curabitur accumsan nisi nibh, ut tempor tortor placerat eu. Pellentesque vel magna lectus. Phasellus nibh tellus, mollis a hendrerit ut, dapibus at nunc. Vivamus vitae est nunc. Praesent dignissim sagittis ante, vel mattis lorem eleifend et. Sed vitae vulputate erat. Nulla facilisi. Suspendisse eget cursus est. Nulla volutpat justo diam, sed mollis elit rutrum non. Proin nec orci eleifend, interdum dolor eget, consequat lorem.",
      main_image: "https://via.placeholder.com/600x400",
      thumb_image: "https://via.placeholder.com/400x300"
    )
end

puts "9 portfolio item created"

