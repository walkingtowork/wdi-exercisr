@exercises = [
  "Running",
  "Hiking",
  "Climbing",
  "Biking",
  "Tennis",
  "Martial Arts",
  "Living On Potrero Hill"
]

30.times do |x|
  User.create(
    :email => "Anon" + x.to_s + "@exercisr.com",
    :password => "password",
    :password_confirmation => "password"
    )
  2.times do |y|
    Exercise.create(
      :activity => @exercises.sample,
      :value => rand(10),
      :units => "hours",
      :completed => Date.today,
      :user_id => x + 1
      )
  end
end