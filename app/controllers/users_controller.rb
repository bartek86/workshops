class UsersController < ApplicationController
    before_action :authenticate_user!
    
    expose(:user)
    expose(:reviews)
    expose_decorated(:user)
    expose_decorated(:reviews, ancestor: :user )
     
    def show
      @reviews = user.reviews.last(5)
<<<<<<< HEAD
      @products = user.products
=======
>>>>>>> b5549c7f940e015bac58852bc658a3f1ed7c9754
    end
    
end
