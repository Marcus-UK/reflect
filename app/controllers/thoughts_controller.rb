class ThoughtsController < ApplicationController
    http_basic_authenticate_with name: "user", password: "secret", only: :destroy

    def create
        @reflection = Reflection.find(params[:reflection_id])
        @thought = @reflection.thoughts.create(thought_params)
        redirect_to reflection_path(@reflection)
      end

    def destroy
    @reflection = Reflection.find(params[:reflection_id])
    @thought = @reflection.thoughts.find(params[:id])
    @thought.destroy
    redirect_to reflection_path(@reflection)
    end  
     
    private

    def thought_params
      params.require(:thought).permit(:thoughter, :body)
    end
end
