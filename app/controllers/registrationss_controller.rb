class RegistrationssController < ApplicationController
    def index
        @ussers = Usser.all
    end
    
  

    

    def new
        @usser = Usser.new
    end

    def create
        
        @usser = Usser.new(usser_params)
        usser=Usser.find_by(email: params[:email])
        if @usser.save 
            
           session[:usser_id] = @usser.id
           
           
           redirect_to  shops_path ,notice: "successfully signedup"
        else
            
       
            
            flash[:notice] = "Enter the credentials properly"
            render :new 
        end
        
        if usser.present? 
            flash[:notice] = "login again"
        end

        render json:@usser

    end

    private
    def usser_params
      params.require(:usser).permit(:email,:password,:password_confirmation)

     end
end

