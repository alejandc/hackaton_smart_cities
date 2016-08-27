class RegistrationController < Devise::RegistrationsController

  def create
    super do |resource|
      resource.add_role :user
    end
  end

end
