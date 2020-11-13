class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

def create
  @message = Message.new message_params
  if @message.valid?
    MessageMailer.contact(@message).deliver_now
    redirect_to new_message_url
    flash[:notice] = "Recebemos a sua mensagem e entraremos em contato em breve"
  else
    flash[:notice] = "Houve um erro, por favor tentar novamente"
    render :new
  end
end

private
def message_params
    params.require(:message).permit(:name, :email, :phone_number, :body)
  end
end