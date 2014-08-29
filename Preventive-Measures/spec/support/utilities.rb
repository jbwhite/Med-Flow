# def sign_in(user)
#   # Capybara sign-in
#   visit signin_path
#   fill_in "Email",    with: user.email
#   fill_in "Password", with: user.password
#   click_button "Sign in"

#   # Sign in when not using Capybara
#   post sessions_path, :email => "foo@bar.com", :password => "password", :password_confirmation => "password"   # <-- code that worked
# end

# http://archive.railsforum.com/viewtopic.php?id=48551
