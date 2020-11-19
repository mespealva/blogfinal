class ArticulesController < InheritedResources::Base

  private

    def articule_params
      params.require(:articule).permit(:title, :content, :user_id)
    end

end
