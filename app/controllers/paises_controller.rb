class PaisesController < ApplicationController
  include ActionView::Helpers::FormOptionsHelper
  # GET /paises
  # GET /paises.json
  def index
    @paises = Paise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paises }
    end
  end

  # GET /paises/1
  # GET /paises/1.json
  def show
    @paise = Paise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paise }
    end
  end

  # GET /paises/new
  # GET /paises/new.json
  def new
    @paise = Paise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paise }
    end
  end

  # GET /paises/1/edit
  def edit
    @paise = Paise.find(params[:id])
  end

  # POST /paises
  # POST /paises.json
  def create
    @paise = Paise.new(params[:paise])

    respond_to do |format|
      if @paise.save
        format.html { redirect_to @paise, notice: 'País criado com sucesso!!.' }
        format.json { render json: @paise, status: :created, location: @paise }
      else
        format.html { render action: "new" }
        format.json { render json: @paise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paises/1
  # PUT /paises/1.json
  def update
    @paise = Paise.find(params[:id])

    respond_to do |format|
      if @paise.update_attributes(params[:paise])
        format.html { redirect_to @paise, notice: 'País editado com sucesso!!.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @paise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paises/1
  # DELETE /paises/1.json
  def destroy
    @paise = Paise.find(params[:id])
    @paise.destroy

    respond_to do |format|
      format.html { redirect_to paises_url }
      format.json { head :no_content }
    end
  end

  def paise_params
    params.require(:paise).permit(:nome, :cep_attributes => [:id, :cep, :logradouro, :bairro_id, :destroy, 
      :estado_attributes => [:id, :nome ]])
end

def estados
  pase = Pais.find(params[:id])

  estados =[[]]
  paise.estado.each do |estado|
    estados << [estado.nome, estado.id ]
  end
  render text: options_for_select(estados)
end
end