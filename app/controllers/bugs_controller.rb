class BugsController < ApplicationController

  def proposed_bugs
    @bugs = Bug.find_all_by_bucket('Proposed')
    respond_with_bugs   
  end

  def assigned_bugs
    @bugs = Bug.find_all_by_bucket('Assigned')
    respond_with_bugs   
  end

  def completed_bugs
    @bugs = Bug.find_all_by_bucket('Completed')
    respond_with_bugs   
  end

  # GET /bugs
  # GET /bugs.xml
  def index
    assigned_bugs
  end

  # GET /bugs/1
  # GET /bugs/1.xml
  def show
    @bug = Bug.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bug }
    end
  end

  # GET /bugs/new
  # GET /bugs/new.xml
  def new
    @bug = Bug.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bug }
    end
  end

  # GET /bugs/1/edit
  def edit
    @bug = Bug.find(params[:id])
  end

  # POST /bugs
  # POST /bugs.xml
  def create
    @bug = Bug.new(params[:bug])

    respond_to do |format|
      if @bug.save
        flash[:notice] = 'Bug was successfully created.'
        format.html { redirect_to(@bug) }
        format.xml  { render :xml => @bug, :status => :created, :location => @bug }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bugs/1
  # PUT /bugs/1.xml
  def update
    @bug = Bug.find(params[:id])

    respond_to do |format|
      if @bug.update_attributes(params[:bug])
        flash[:notice] = 'Bug was successfully updated.'
        format.html { redirect_to(@bug) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bugs/1
  # DELETE /bugs/1.xml
  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy

    respond_to do |format|
      format.html { redirect_to(bugs_url) }
      format.xml  { head :ok }
    end
  end

  private

  def respond_with_bugs
    respond_to do |format|
      format.html { render 'index.html.erb' }
      format.xml  { render :xml => @bugs }
    end
  end
end
