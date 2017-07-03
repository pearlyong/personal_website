class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end
  
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:user])
 
    respond_to do |format|
      if @message.save
        # Tell the UserMailer to send a welcome email after save
        MessageMailer.welcome_email(@message).deliver
 
        format.html { redirect_to(@message, notice: 'User was successfully created.') }
        format.json { render json: @message, status: :created, location: @message }
      else
        format.html { render action: 'new' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end