class HomeController < ApplicationController
  def index
  end

  def random
    @t = params[:tag_ids] || nil 
    if (@t != nil)
      @joints = Joint.joins(:tags).where('tags.name' => @t.split(',')).find(:all)#.count(:all)
    else
      @joints = Joint.find(:all)#.count(:all)
    end
    @r = @joints[rand(@joints.length)].name
  end
end
