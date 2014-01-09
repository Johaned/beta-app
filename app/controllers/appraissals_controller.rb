class AppraissalsController < ApplicationController
  # GET /appraissals
  # GET /appraissals.json
  def index
    @appraissals = Appraissal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @appraissals }
    end
  end

  # GET /appraissals/1
  # GET /appraissals/1.json
  def show
    @appraissal = Appraissal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @appraissal }
    end
  end

  # GET /appraissals/new
  # GET /appraissals/new.json
  def new
    @appraissal = Appraissal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @appraissal }
    end
  end

  # GET /appraissals/1/edit
  def edit
    @appraissal = Appraissal.find(params[:id])
  end

  # POST /appraissals
  # POST /appraissals.json
  def create
    @appraissal = Appraissal.new(params[:appraissal])

    respond_to do |format|
      if @appraissal.save
        format.html { redirect_to @appraissal, notice: 'Appraissal was successfully created.' }
        format.json { render json: @appraissal, status: :created, location: @appraissal }
      else
        format.html { render action: "new" }
        format.json { render json: @appraissal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /appraissals/1
  # PUT /appraissals/1.json
  def update
    @appraissal = Appraissal.find(params[:id])

    respond_to do |format|
      if @appraissal.update_attributes(params[:appraissal])
        format.html { redirect_to @appraissal, notice: 'Appraissal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @appraissal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appraissals/1
  # DELETE /appraissals/1.json
  def destroy
    @appraissal = Appraissal.find(params[:id])
    @appraissal.destroy

    respond_to do |format|
      format.html { redirect_to appraissals_url }
      format.json { head :no_content }
    end
  end
end
