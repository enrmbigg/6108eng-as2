class AnnoucementsController < ApplicationController
  # GET /annoucements
  # GET /annoucements.json
  def index
    @annoucements = Annoucement.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @annoucements }
    end
  end

  # GET /annoucements/1
  # GET /annoucements/1.json
  def show
    @annoucement = Annoucement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @annoucement }
    end
  end

  # GET /annoucements/new
  # GET /annoucements/new.json
  def new
    @annoucement = Annoucement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @annoucement }
    end
  end

  # GET /annoucements/1/edit
  def edit
    @annoucement = Annoucement.find(params[:id])
  end

  # POST /annoucements
  # POST /annoucements.json
  def create
    @annoucement = Annoucement.new(params[:annoucement])

    respond_to do |format|
      if @annoucement.save
        format.html { redirect_to @annoucement, notice: 'Annoucement was successfully created.' }
        format.json { render json: @annoucement, status: :created, location: @annoucement }
      else
        format.html { render action: "new" }
        format.json { render json: @annoucement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /annoucements/1
  # PUT /annoucements/1.json
  def update
    @annoucement = Annoucement.find(params[:id])

    respond_to do |format|
      if @annoucement.update_attributes(params[:annoucement])
        format.html { redirect_to @annoucement, notice: 'Annoucement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @annoucement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /annoucements/1
  # DELETE /annoucements/1.json
  def destroy
    @annoucement = Annoucement.find(params[:id])
    @annoucement.destroy

    respond_to do |format|
      format.html { redirect_to annoucements_url }
      format.json { head :no_content }
    end
  end
end
