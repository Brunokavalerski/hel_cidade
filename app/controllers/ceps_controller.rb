class CepsController < ApplicationController
  # GET /ceps
  # GET /ceps.json
  def index
    @ceps = Cep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ceps }
    end
  end

  # GET /ceps/1
  # GET /ceps/1.json
  def show
    @cep = Cep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cep }
    end
  end

  # GET /ceps/new
  # GET /ceps/new.json
  def new
    @cep = Cep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cep }
    end
  end

  # GET /ceps/1/edit
  def edit
    @cep = Cep.find(params[:id])
  end

  # POST /ceps
  # POST /ceps.json
  def create
    @cep = Cep.new(params[:cep])

    respond_to do |format|
      if @cep.save
        format.html { redirect_to @cep, notice: 'Cep salvo com sucesso.!!' }
        format.json { render json: @cep, status: :created, location: @cep }
      else
        format.html { render action: "new" }
        format.json { render json: @cep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ceps/1
  # PUT /ceps/1.json
  def update
    @cep = Cep.find(params[:id])

    respond_to do |format|
      if @cep.update_attributes(params[:cep])
        format.html { redirect_to @cep, notice: 'Cep atualizado com sucesso.!!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ceps/1
  # DELETE /ceps/1.json
  def destroy
    @cep = Cep.find(params[:id])
    @cep.destroy

    respond_to do |format|
      format.html { redirect_to ceps_url }
      format.json { head :no_content }
    end
  end
end
