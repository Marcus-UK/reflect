class ReflectionsController < ApplicationController
    def index
        @reflections = Reflection.all
    end

    def show
        @reflection = Reflection.find(params[:id])
    end

    def new
        @reflection = Reflection.new
    end

    def edit
        @reflection = Reflection.find(params[:id])
    end

    def create
        @reflection = Reflection.new(reflection_params)

        if @reflection.save
            redirect_to @reflection
        else
            render 'new'
        end
    end

    def update
        @reflection = Reflection.find(params[:id])

        if @reflection.update(reflection_params)
            redirect_to @reflection
        else
            render 'edit'
        end
    end

    private

    def reflection_params
        params.require(:reflection).permit(:title, :text)
    end
end
