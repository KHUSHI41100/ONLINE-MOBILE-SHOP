class SessionsController < ApplicationController
    
    
   def create 
     
     usser=Usser.find_by(email: params[:email])
       if usser.present?  && usser.authenticate(params[:password])
        redirect_to shops_path ,notice: "Logged in successfully"
         $redis.sadd('uniquevisitors',usser.email)
         $redis.scard('uniquevisitors')
         





          
    
       else 

        
        flash[:notice] = "Enter the credentials properly" 
       end
       @ussers = Usser.all
    end





   



    def destroy 
        session[:usser_id]=nil
        redirect_to sign_up_path
    end
end
