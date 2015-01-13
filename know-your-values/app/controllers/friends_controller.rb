class FriendsController < ApplicationController
  include IndexHelper
  def index
    friends = Friendship.friends(current_user.id)
    render partial: 'friends/friendslist', locals: {friends: friends, button: "unfriend"}
  end

  def requests
    friends = Friendship.friend_requests(current_user.id)
    render partial: 'friends/friendslist', locals: {friends: friends, button: "add"}
  end

  def search
    friends = User.where(email: params[:email])
    render partial: 'friends/friendslist', locals: {friends: friends, button: "add"}
  end

  def show
    ship = Friendship.find_by(user_id: current_user.id, friend_id: params[:id])
    request_received = Friendship.find_by(user_id: params[:id], friend_id: current_user.id) != nil
    if ship && ship.status
      friend = User.find(params[:id])
      moreValues = Value.all.shuffle[0..50]
      values = UserValue.values_of_user(params[:id])
      render '/values/friendvalues', locals: {friend: friend, values: values, moreValues: moreValues}
    else
      friend = User.find(params[:id])
      render '/values/friendvalues', locals: {friend: friend, values: [], moreValues: []}
    end
  end

  def update
    Friendship.create(user_id: current_user.id, friend_id: params[:friend_id])
    friends = []
    render partial: 'friends/friendslist', locals: {friends: friends, button: "add"}
  end

  def destroy
    my_friendship = Friendship.find_by(user_id: current_user.id, friend_id: params[:friend_id]).destroy
    fri_friendship = Friendship.find_by(user_id: params[:friend_id], friend_id: current_user.id).destroy

    friends = Friendship.friends(current_user.id)

    render partial: 'friends/friendslist', locals: {friends: friends, button: "unfriend"}
  end


end
