class DrvesController < ApplicationController
  # GET /drves
  # GET /drves.xml
  def index
    @drves = Drf.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @drves }
    end
  end

  # GET /drves/1
  # GET /drves/1.xml
  def show
    @drf = Drf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @drf }
    end
  end

  # GET /drves/new
  # GET /drves/new.xml
  def new
    @drf = Drf.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @drf }
    end
  end

  # GET /drves/1/edit
  def edit
    @drf = Drf.find(params[:id])
  end

  # POST /drves
  # POST /drves.xml
  def create
    @drf = Drf.new(params[:drf])

    respond_to do |format|
      if @drf.save
        flash[:notice] = 'Drf was successfully created.'
        format.html { redirect_to(@drf) }
        format.xml  { render :xml => @drf, :status => :created, :location => @drf }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @drf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /drves/1
  # PUT /drves/1.xml
  def update
    @drf = Drf.find(params[:id])

    respond_to do |format|
      if @drf.update_attributes(params[:drf])
        flash[:notice] = 'Drf was successfully updated.'
        format.html { redirect_to(@drf) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @drf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /drves/1
  # DELETE /drves/1.xml
  def destroy
    @drf = Drf.find(params[:id])
    @drf.destroy

    respond_to do |format|
      format.html { redirect_to(drves_url) }
      format.xml  { head :ok }
    end
  end
end
