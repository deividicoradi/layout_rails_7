class RazaoSocialEmpresasController < ApplicationController
  before_action :set_razao_social_empresa, only: %i[ show edit update destroy ]

  # GET /razao_social_empresas or /razao_social_empresas.json
  def index
    @razao_social_empresas = RazaoSocialEmpresa.all
  end

  # GET /razao_social_empresas/1 or /razao_social_empresas/1.json
  def show
  end

  # GET /razao_social_empresas/new
  def new
    @razao_social_empresa = RazaoSocialEmpresa.new
  end

  # GET /razao_social_empresas/1/edit
  def edit
  end

  # POST /razao_social_empresas or /razao_social_empresas.json
  def create
    @razao_social_empresa = RazaoSocialEmpresa.new(razao_social_empresa_params)

    respond_to do |format|
      if @razao_social_empresa.save
        format.html { redirect_to razao_social_empresa_url(@razao_social_empresa), notice: "Razao social empresa was successfully created." }
        format.json { render :show, status: :created, location: @razao_social_empresa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @razao_social_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /razao_social_empresas/1 or /razao_social_empresas/1.json
  def update
    respond_to do |format|
      if @razao_social_empresa.update(razao_social_empresa_params)
        format.html { redirect_to razao_social_empresa_url(@razao_social_empresa), notice: "Razao social empresa was successfully updated." }
        format.json { render :show, status: :ok, location: @razao_social_empresa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @razao_social_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /razao_social_empresas/1 or /razao_social_empresas/1.json
  def destroy
    @razao_social_empresa.destroy

    respond_to do |format|
      format.html { redirect_to razao_social_empresas_url, notice: "Razao social empresa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_razao_social_empresa
      @razao_social_empresa = RazaoSocialEmpresa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def razao_social_empresa_params
      params.require(:razao_social_empresa).permit(:fornecedores, :razao_social)
    end
end
