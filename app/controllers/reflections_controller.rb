class ReflectionsController < ApplicationController
    def index
        @reflections = Reflection.all
    end
    
    def show
        @reflection = Reflection.find(params[:id])
    end
    
    def new
    end

    def create
        @reflection = Reflection.new(reflection_params)
 
        @reflection.save
        redirect_to @reflection
    end

    private
    
    def reflection_params
        params.require(:reflection).permit(:title, :text)
    end
end
