class ContactController < ApplicationController
  def create
    @contact = Contact.new()
    @contact.name = params[:name]
    @contact.email = params[:email]
    @cotact.phone = params[:phone]
    @contact.message = params[:message]
    if @contact.deliver
      render json: {message: "Email enviado com sucessoc"}
    else
      render json: @contact.errors
    end
  end
end0