class PrototypesController < ApplicationController
  def index
    @prototype = Prototype.all


    
  end
  def new
    @prototype = Prototype.new
    
  end

  def create
     @prototype = Prototype.create(prototype_params)
     if @prototype.save
      redirect_to root_path

    else
      render :new 
    end

    def show
      @prototype = Prototype.find[:id]

      
    end

    
  end

  private

  def prototype_params
    params.require(:prototype).permit(:image, :title, :catch_copy, :concept).merge(user_id: current_user.id)

  end


end
