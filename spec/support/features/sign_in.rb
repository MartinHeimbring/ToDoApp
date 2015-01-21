module Feature
  def sign_in
    visit new_session_path
    fill_in 'Email', with: 'person@example.com'
    click_on 'Sign in'
  end
end