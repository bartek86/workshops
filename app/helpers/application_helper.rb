module ApplicationHelper
    def username
        if user_signed_in?
            return current_user.firstname + " " + current_user.lastname
        end
    end
end
