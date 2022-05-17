# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'Gilfoyle@piedpiper.com', password:'password', password_confirmation: 'password')

10.times do |x|
    Post.create(
        title: "Title #{x}", 
        content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sem viverra aliquet eget sit amet. Semper eget duis at tellus at urna condimentum mattis pellentesque. Ac turpis egestas sed tempus urna et pharetra pharetra. Ipsum dolor sit amet consectetur. Massa vitae tortor condimentum lacinia quis vel eros donec ac. Sed tempus urna et pharetra. Lectus urna duis convallis convallis tellus id interdum. Malesuada pellentesque elit eget gravida cum sociis natoque penatibus et. Augue interdum velit euismod in pellentesque massa. Nec dui nunc mattis enim ut tellus elementum. A arcu cursus vitae congue. Et malesuada fames ac turpis egestas integer. Mauris vitae ultricies leo integer malesuada.

Blandit turpis cursus in hac habitasse platea dictumst quisque sagittis. Non diam phasellus vestibulum lorem sed risus. Elit at imperdiet dui accumsan sit amet. Et pharetra pharetra massa massa ultricies mi quis. Augue neque gravida in fermentum. Rhoncus urna neque viverra justo nec ultrices. Neque gravida in fermentum et sollicitudin. Mi ipsum faucibus vitae aliquet nec ullamcorper. Posuere lorem ipsum dolor sit amet. Tortor vitae purus faucibus ornare suspendisse. Orci dapibus ultrices in iaculis.',
        user_id: User.first.id
    )
end
