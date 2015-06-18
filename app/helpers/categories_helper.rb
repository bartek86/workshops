module CategoriesHelper

def administrator
    if !current_user.nil? && true == current_user.admin?
        return true
    end
end

end
