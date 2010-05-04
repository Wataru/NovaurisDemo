class ActtypesController < ApplicationController
  # GET /acttypes
  # GET /acttypes.xml
  def index
    @acttypes = Acttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @acttypes }
    end
  end

  # GET /acttypes/1
  # GET /acttypes/1.xml
  def show
    @acttype = Acttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @acttype }
    end
  end

  # GET /acttypes/new
  # GET /acttypes/new.xml
  def new
    @acttype = Acttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @acttype }
    end
  end

  # GET /acttypes/1/edit
  def edit
    @acttype = Acttype.find(params[:id])
  end

  # POST /acttypes
  # POST /acttypes.xml
  def create
    @acttype = Acttype.new(params[:acttype])

    respond_to do |format|
      if @acttype.save
        flash[:notice] = 'Acttype was successfully created.'
        format.html { redirect_to(@acttype) }
        format.xml  { render :xml => @acttype, :status => :created, :location => @acttype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @acttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acttypes/1
  # PUT /acttypes/1.xml
  def update
    @acttype = Acttype.find(params[:id])

    respond_to do |format|
      if @acttype.update_attributes(params[:acttype])
        flash[:notice] = 'Acttype was successfully updated.'
        format.html { redirect_to(@acttype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @acttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acttypes/1
  # DELETE /acttypes/1.xml
  def destroy
    @acttype = Acttype.find(params[:id])
    @acttype.destroy

    respond_to do |format|
      format.html { redirect_to(acttypes_url) }
      format.xml  { head :ok }
    end
  end
end
