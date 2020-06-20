class MessagesController < ApplicationController
  def index
    @messages = Message.includes(:user).page(params[:page]).per(3)
  end

  def new 
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message_images_url = @message.images.map{|image| url_for(image)}
    if  @message.save
      respond_to do |format|
        format.html{redirect_to root_path(@message), notice: '投稿が完了しました'}
        format.json
      end
    else
      render :new
    end
  end

  private
  def message_params 
    params.require(:message).permit(:title,:text, images:[]).merge(user_id: current_user.id)
  end
end
