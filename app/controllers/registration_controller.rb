class RegistrationController < ApplicationController

  def create
    email = params[:moussaillon][:email]
    if Admin::Whitelist.find_by_email(email) != nil
      super
    else
      build_resource

      set_flash_message :error, "Vous n'êtes pas sur la liste !"
      render_with_scope :new
    end
  end
end
