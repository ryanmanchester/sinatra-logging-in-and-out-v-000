require 'pry'
class Helpers

  def self.current_user(session)
    #binding.pry
    @user = User.find_by("id")
     if @user.id == session[:user_id]
       @user
     end
   end

   def self.is_logged_in?(session)
      !!(@user.id == session[:user_id])
   end
end
