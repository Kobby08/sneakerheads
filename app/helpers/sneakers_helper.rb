module SneakersHelper
  def authentication_helper
    unless user_signed_in?
      (link_to 'Sign In', new_user_session_path) + (link_to ' Sign Up', new_user_registration_path)
    else
      button_to 'Log out', destroy_user_session_path, method: :delete, data: { turbo: 'false',}
    end
  end
end
