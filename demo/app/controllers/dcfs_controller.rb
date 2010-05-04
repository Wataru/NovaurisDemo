class DcfsController < ApplicationController
  # GET /dcfs
  # GET /dcfs.xml
  def index
    @dcfs = Dcf.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dcfs }
    end
  end

  # GET /dcfs/1
  # GET /dcfs/1.xml
  def show
    @dcf = Dcf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dcf }
    end
  end

  # GET /dcfs/new
  # GET /dcfs/new.xml
  def new
    @dcf = Dcf.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dcf }
    end
  end

  # GET /dcfs/1/edit
  def edit
    @dcf = Dcf.find(params[:id])
  end

  # POST /dcfs
  # POST /dcfs.xml
  def create
    @dcf = Dcf.new(params[:dcf])

    respond_to do |format|
      if @dcf.save
        flash[:notice] = 'Dcf was successfully created.'
        format.html { redirect_to(@dcf) }
        format.xml  { render :xml => @dcf, :status => :created, :location => @dcf }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dcf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dcfs/1
  # PUT /dcfs/1.xml
  def update
    @dcf = Dcf.find(params[:id])

    respond_to do |format|
      if @dcf.update_attributes(params[:dcf])
        flash[:notice] = 'Dcf was successfully updated.'
        format.html { redirect_to(@dcf) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dcf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dcfs/1
  # DELETE /dcfs/1.xml
  def destroy
    @dcf = Dcf.find(params[:id])
    @dcf.destroy

    respond_to do |format|
      format.html { redirect_to(dcfs_url) }
      format.xml  { head :ok }
    end
  end
end
