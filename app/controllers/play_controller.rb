class PlayController < ApplicationController
  def new
  end
  
  def throw
    # if user did not pass in a sign, generate a random one for user
    if params.has_key?(:sign) and !params[:sign].empty?
      @user_sign = Sign.new(params[:sign])
    else
      @user_sign = Sign.random
    end
    @computer_sign = Sign.random
    @result = @user_sign.beats(@computer_sign)
    
    respond_to do |format|
      format.html
      format.json  { render :json => { :result => @result, :computer_sign => @computer_sign.type, :user_sign => @user_sign.type } } # don't do msg.to_json
    end
  end
end
