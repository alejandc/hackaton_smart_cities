admin_user = User.create!(name: 'Admin', email: 'admin@admin.com', password: 'admin1234', password_confirmation: 'admin1234')

admin_user.add_role :admin
