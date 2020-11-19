class AppointmentsController < InheritedResources::Base

  private

    def appointment_params
      params.require(:appointment).permit(:slot_id, :user_id, :client)
    end

end
