class HomeController < ApplicationController
  def index
    @tags = Tag.find(:all, :select => 'DISTINCT name')
  end

  def random
    
    @t = params[:tag_ids] || {}
    if (@t.keys.length != 0)
      @joints = Joint.joins(:tags).where('tags.name' => @t.keys ).find(:all)
    else
      @joints = Joint.find(:all)
    end
    puts "len: ",@joints.length
    @r = @joints[rand(@joints.length)]
    redirect_to(@r)
  end
end
