class GenreEntitiesController < ApplicationController
  before_action :set_genre_entity, only: [:show, :edit, :update, :destroy]

  # GET /genre_entities
  # GET /genre_entities.json
  def index
    @genre_entities = GenreEntity.all
  end

  # GET /genre_entities/1
  # GET /genre_entities/1.json
  def show
  end

  # GET /genre_entities/new
  def new
    @genre_entity = GenreEntity.new
  end

  # GET /genre_entities/1/edit
  def edit
  end

  # POST /genre_entities
  # POST /genre_entities.json
  def create
    @genre_entity = GenreEntity.new(genre_entity_params)

    respond_to do |format|
      if @genre_entity.save
        format.html { redirect_to @genre_entity, notice: 'Genre entity was successfully created.' }
        format.json { render :show, status: :created, location: @genre_entity }
      else
        format.html { render :new }
        format.json { render json: @genre_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genre_entities/1
  # PATCH/PUT /genre_entities/1.json
  def update
    respond_to do |format|
      if @genre_entity.update(genre_entity_params)
        format.html { redirect_to @genre_entity, notice: 'Genre entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @genre_entity }
      else
        format.html { render :edit }
        format.json { render json: @genre_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genre_entities/1
  # DELETE /genre_entities/1.json
  def destroy
    @genre_entity.destroy
    respond_to do |format|
      format.html { redirect_to genre_entities_url, notice: 'Genre entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_genre_entity
      @genre_entity = GenreEntity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def genre_entity_params
      params.require(:genre_entity).permit(:Name, :Description)
    end
end
