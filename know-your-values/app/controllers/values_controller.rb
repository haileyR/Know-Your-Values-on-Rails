 class ValuesController < ApplicationController
  include IndexHelper
  def show
    moreValues = Value.all.shuffle[0..50]
    friend = User.find(params[:id])
    values = UserValue.values_of_user(params[:id])
    render partial: '/values/possiblevalues', locals: {moreValues: moreValues, friend: friend, values: values}
  end


  def add
    if params[:value_id]
      UserValue.find_or_create_by(user_id: params[:id], value_id: params[:value_id])
    else
      newValue = Value.find_or_create_by(word: params[:word].downcase)
      UserValue.create(user_id: params[:id], value_id: newValue.id)
    end
    values = UserValue.values_of_user(params[:id])
    render partial: 'values/addedvalues', locals: {values: values}
  end
end
