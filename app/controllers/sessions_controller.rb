class SessinosController < Devise::SessionsController
  def new
    unless Rails.env.test?
      redirect_to root_url
    end
  end

  def destroy
    super
    sesison[:keep_signed_out] = true # Set a flag to suppress auto sign in
  end
end
