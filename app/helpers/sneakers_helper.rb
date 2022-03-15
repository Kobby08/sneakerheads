module SneakersHelper
  def authentication_helper
    unless user_signed_in?
      (
        link_to 'Sign In',
                new_user_session_path,
                class: 'btn btn-outline-secondary me-2'
      ) +
        (
          link_to ' Sign Up',
                  new_user_registration_path,
                  class: 'btn btn-secondary'
        )
    else
      render 'shared/profile_dropdown'
    end
  end
end
