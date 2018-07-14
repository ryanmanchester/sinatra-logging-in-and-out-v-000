require 'pry'
class Helpers

  def self.current_user(session)
    @user = User.find_by(id: session[:user_id])

    if @user.id == session[:user_id]
       @user
     end
   end

   def self.is_logged_in?(session)
     #binding.pry
      !!(session[:user_id])
   end
end
