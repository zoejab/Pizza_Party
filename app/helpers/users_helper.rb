module UsersHelper

  def party_member?
    if @user.favorite_pizza_places.length == 10
      true
    end
  end

end
