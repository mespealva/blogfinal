class RatingsController < InheritedResources::Base

  private

    def rating_params
      params.require(:rating).permit(:point, :user_id, :articule_id)
    end

end
