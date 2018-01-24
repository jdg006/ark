class HomeController < ApplicationController
  def index
    @items = Item.all
    @loadout = Loadout.first
    @choices = Choice.all
  end
end
