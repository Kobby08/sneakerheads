module SneakersHelper
  def authentication_helper
    unless user_signed_in?
      (link_to 'Sign In', new_user_session_path, class: "btn btn-outline-success me-2") + (link_to ' Sign Up', new_user_registration_path, class: "btn btn-success")
    else
      button_to 'Log out', destroy_user_session_path, method: :delete, data: { turbo: 'false',}, class: "btn btn-danger"
    end
  end
end
