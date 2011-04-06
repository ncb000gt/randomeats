class TagsController < ApplicationController
  def create
    @joint = Joint.find(params[:joint_id])
    @tag = @joint.tags.create(params[:tag]) 
    redirect_to joint_path(@joint)
  end

  def destroy
    @joint = Joint.find(params[:joint_id])
    @tag = @joint.tags.find(params[:id])
    @tag.destroy
    redirect_to joint_path(@joint)
  end
end
