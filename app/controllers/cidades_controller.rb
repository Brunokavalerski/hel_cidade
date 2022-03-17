class CidadesController < ApplicationController
  include ActionView::Helpers::FormOptionsHelper

  # GET /cidades
  # GET /cidades.json
  def index
    @cidades = Cidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cidades }
    end
  end

  # GET /cidades/1
  # GET /cidades/1.json
  def show
    @cidade = Cidade.find(params[:id])
 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cidade }
    end
  end

  # GET /cidades/new
  # GET /cidades/new.json
  def new
    @cidade = Cidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cidade }
    end
  end

  # GET /cidades/1/edit
  def edit
    @cidade = Cidade.find(params[:id])
  end

  # POST /cidades
  # POST /cidades.json
  def create
    @cidade = Cidade.new
    @cidade.nome = params[:cidade][:nome]
    @cidade.estado_id = params[:cidade][:estado_id]
    @cidade.habitantes = params[:cidade][:habitantes]

    respond_to do |format|
      if @cidade.save
      
        format.html { redirect_to cidade_path(@cidade), notice: 'Cidade cadastrada com sucesso' }
        format.json { render json: @cidade, status: :create, location: @cidade }
      else
        format.html { render action: "new" }
        format.json { render json: @cidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cidades/1
  # PUT /cidades/1.json
  def update
    @cidade = Cidade.find(params[:id])

    respond_to do |format|
      if @cidade.update_attributes(params[:cidade])
        format.html { redirect_to @cidade, notice: 'Cidade atualizada com sucesso!!!.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cidade.errors, status: :unprocessable_entity }
        redirect_to :action => :index
      end
    end
  end

  # DELETE /cidades/1
  # DELETE /cidades/1.json
  def destroy
    @cidade = Cidade.find(params[:id])
    @cidade.destroy

   respond_to do |format|
      format.html { redirect_to cidades_url }
      format.json { head :no_content }
    end
  end

def bairros
  cidade = Cidade.find(params[:id])

  bairros =[[]]
  cidade.bairros.each do |bairro|
    bairros << [bairro.nome, bairro.id ]
  end
  render text: options_for_select(bairros)
end

end