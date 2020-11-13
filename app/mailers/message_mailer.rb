class MessageMailer < ApplicationMailer

  def contact
    @user = params[:name]
    @url  = 'http://example.com/login'
    mail(to: params[:email], subject: 'Welcome to My Awesome Site')
  end
  
end
