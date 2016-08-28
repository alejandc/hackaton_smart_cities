admin_user = User.create!(name: 'Admin', email: 'admin@admin.com', password: 'admin1234', password_confirmation: 'admin1234', sube_reference: '23984712309487234', points: rand(300))
admin_user.add_role :admin

user1 = User.create!(name: 'Usuario 1', email: 'usuario1@user.com', password: 'user1234', password_confirmation: 'user1234', sube_reference: '23984712309487234', points: rand(300))
user1.add_role :user

user2 = User.create!(name: 'Usuario 2', email: 'usuario2@user.com', password: 'user1234', password_confirmation: 'user1234', sube_reference: '29438758927439234', points: rand(300))
user2.add_role :user

user3 = User.create!(name: 'Usuario 3', email: 'usuario3@user.com', password: 'user1234', password_confirmation: 'user1234', sube_reference: '09347528794839489', points: rand(300))
user3.add_role :user

user4 = User.create!(name: 'Usuario 4', email: 'usuario4@user.com', password: 'user1234', password_confirmation: 'user1234', sube_reference: '03456909734533485', points: rand(300))
user4.add_role :user

user5 = User.create!(name: 'Usuario 5', email: 'usuario5@user.com', password: 'user1234', password_confirmation: 'user1234', sube_reference: '23765923489293333', points: rand(300))
user5.add_role :user
