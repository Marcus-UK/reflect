class ThoughtsController < ApplicationController
    def create
        @reflection = Reflection.find(params[:reflection_id])
        @thought = @reflection.thoughts.create(thought_params)
        redirect_to reflection_path(@reflection)
      end
     
      private
        def thought_params
          params.require(:thought).permit(:thoughter, :body)
        end
end
