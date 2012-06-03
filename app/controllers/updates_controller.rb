class AnnouncementsController < ApplicationController
  # GET /updates
  # GET /updates.json
  def index
    @updates = Update.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @updates }
    end
  end

  # GET /updates/1
  # GET /updates/1.json
  def show
  end

  # GET /updates/new
  # GET /updates/new.json
  def new
    @update = Update.new
    @user = current_user
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @update }
    end
  end

  # GET /updates/1/edit
  def edit
    @update = Update.find(params[:id])
  end

  # POST /updates
  # POST /updates.json
  def create
    @user = current_user
    @update = @user.updates.create!(params[:update])

    respond_to do |format|
      if @update.save
        format.html { redirect_to @update, notice: 'Update was successfully created.' }
        format.json { render json: @update, status: :created, location: @update }
      else
        format.html { render action: "new" }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /updates/1
  # DELETE /updates/1.json
  def destroy
    @update = Update.find(params[:id])
    @update.destroy
  end
end
