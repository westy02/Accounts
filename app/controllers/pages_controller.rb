class PagesController < ApplicationController
  #skip_before_filter :authenticate_company!, :except => :home
  skip_before_action :authenticate_company!, except: [:home]
  
  def welcome
    if company_signed_in?
      redirect_to home_path
    end
  end
  
  def home 
    
  end
    
  def contact
    @title = "Contact"
  end
  
  def help
    @title= "help"
  end
  
  #def admin
  #  @title = "Admin"
  #end
  
  #def settings
   # @title = "Settings"
  #end
end