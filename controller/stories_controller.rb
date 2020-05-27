require './controller/games_controller'

class StoriesController < GamesController
  attr_accessor :revise_status_array

  def revise_status_array_define
    @revise_status_array = ["せいかく"]
    5.times do
      status_revision_rate = rand(0.6..1.4).round(1)
      @revise_status_array << status_revision_rate
    end
    @revise_status_array
  end

  def stage_1(brave)
    puts "stage 1"
    sleep 1
  end

end