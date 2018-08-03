class MainMenuController < ApplicationController
  def home
  end

  def prices
    @works = Work.all
    @floor_works =     @works.where(plane: "floor")
    @wall_works =      @works.where(plane: "wall")
    @roof_works =      @works.where(plane: "roof")
    @tile_works =      @works.where(plane: "tile")
    @plumbing_works =  @works.where(plane: "plumbing")
    @electric_works =  @works.where(plane: "electric")
    @extra_works =     @works.where(plane: "extra")
  end

  def information
  end

  def consumption_of_materials
  end

  def contacts
  end
end
