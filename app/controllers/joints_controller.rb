class JointsController < ApplicationController
  # GET /joints
  # GET /joints.xml
  def index
    @joints = Joint.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @joints }
    end
  end

  # GET /joints/1
  # GET /joints/1.xml
  def show
    @joint = Joint.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @joint }
    end
  end

  # GET /joints/new
  # GET /joints/new.xml
  def new
    @joint = Joint.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @joint }
    end
  end

  # GET /joints/1/edit
  def edit
    @joint = Joint.find(params[:id])
  end

  # POST /joints
  # POST /joints.xml
  def create
    @joint = Joint.new(params[:joint])

    respond_to do |format|
      if @joint.save
        format.html { redirect_to(@joint, :notice => 'Joint was successfully created.') }
        format.xml  { render :xml => @joint, :status => :created, :location => @joint }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @joint.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /joints/1
  # PUT /joints/1.xml
  def update
    @joint = Joint.find(params[:id])

    respond_to do |format|
      if @joint.update_attributes(params[:joint])
        format.html { redirect_to(@joint, :notice => 'Joint was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @joint.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /joints/1
  # DELETE /joints/1.xml
  def destroy
    @joint = Joint.find(params[:id])
    @joint.destroy

    respond_to do |format|
      format.html { redirect_to(joints_url) }
      format.xml  { head :ok }
    end
  end
end
