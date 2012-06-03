class ReportedDangersController < ApplicationController
  # GET /reported_dangers
  # GET /reported_dangers.json
  def index
    @reported_dangers = ReportedDanger.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reported_dangers }
    end
  end

  # GET /reported_dangers/1
  # GET /reported_dangers/1.json
  def show
    @reported_danger = ReportedDanger.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reported_danger }
    end
  end

  # GET /reported_dangers/new
  # GET /reported_dangers/new.json
  def new
    @reported_danger = ReportedDanger.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reported_danger }
    end
  end

  # GET /reported_dangers/1/edit
  def edit
    @reported_danger = ReportedDanger.find(params[:id])
  end

  # POST /reported_dangers
  # POST /reported_dangers.json
  def create
    @reported_danger = current_user.reported_dangers.build(params[:reported_danger])

    respond_to do |format|
      if @reported_danger.save
        format.html { redirect_to @reported_danger, notice: 'Reported danger was successfully created.' }
        format.json { render json: @reported_danger, status: :created, location: @reported_danger }
      else
        format.html { render action: "new" }
        format.json { render json: @reported_danger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /reported_dangers/1
  # PUT /reported_dangers/1.json
  def update
    @reported_danger = ReportedDanger.find(params[:id])

    respond_to do |format|
      if @reported_danger.update_attributes(params[:reported_danger])
        format.html { redirect_to @reported_danger, notice: 'Reported danger was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reported_danger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reported_dangers/1
  # DELETE /reported_dangers/1.json
  def destroy
    @reported_danger = ReportedDanger.find(params[:id])
    @reported_danger.destroy

    respond_to do |format|
      format.html { redirect_to reported_dangers_url }
      format.json { head :no_content }
    end
  end
end
