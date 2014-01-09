class EdocsController < ApplicationController
  # GET /edocs
  # GET /edocs.json
  def index
    @edocs = Edoc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @edocs }
    end
  end

  # GET /edocs/1
  # GET /edocs/1.json
  def show
    @edoc = Edoc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @edoc }
    end
  end

  # GET /edocs/new
  # GET /edocs/new.json
  def new
    @edoc = Edoc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @edoc }
    end
  end

  # GET /edocs/1/edit
  def edit
    @edoc = Edoc.find(params[:id])
  end

  # POST /edocs
  # POST /edocs.json
  def create
    @edoc = Edoc.new(params[:edoc])

    respond_to do |format|
      if @edoc.save
        format.html { redirect_to @edoc, notice: 'Edoc was successfully created.' }
        format.json { render json: @edoc, status: :created, location: @edoc }
      else
        format.html { render action: "new" }
        format.json { render json: @edoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /edocs/1
  # PUT /edocs/1.json
  def update
    @edoc = Edoc.find(params[:id])

    respond_to do |format|
      if @edoc.update_attributes(params[:edoc])
        format.html { redirect_to @edoc, notice: 'Edoc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @edoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edocs/1
  # DELETE /edocs/1.json
  def destroy
    @edoc = Edoc.find(params[:id])
    @edoc.destroy

    respond_to do |format|
      format.html { redirect_to edocs_url }
      format.json { head :no_content }
    end
  end
end
