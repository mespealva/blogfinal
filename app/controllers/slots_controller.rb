class SlotsController < InheritedResources::Base

  private

    def slot_params
      params.require(:slot).permit(:available, :user_id, :day, :start, :end)
    end

end
