require "test_helper"

class RazaoSocialEmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @razao_social_empresa = razao_social_empresas(:one)
  end

  test "should get index" do
    get razao_social_empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_razao_social_empresa_url
    assert_response :success
  end

  test "should create razao_social_empresa" do
    assert_difference("RazaoSocialEmpresa.count") do
      post razao_social_empresas_url, params: { razao_social_empresa: { fornecedores: @razao_social_empresa.fornecedores, razao_social: @razao_social_empresa.razao_social } }
    end

    assert_redirected_to razao_social_empresa_url(RazaoSocialEmpresa.last)
  end

  test "should show razao_social_empresa" do
    get razao_social_empresa_url(@razao_social_empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_razao_social_empresa_url(@razao_social_empresa)
    assert_response :success
  end

  test "should update razao_social_empresa" do
    patch razao_social_empresa_url(@razao_social_empresa), params: { razao_social_empresa: { fornecedores: @razao_social_empresa.fornecedores, razao_social: @razao_social_empresa.razao_social } }
    assert_redirected_to razao_social_empresa_url(@razao_social_empresa)
  end

  test "should destroy razao_social_empresa" do
    assert_difference("RazaoSocialEmpresa.count", -1) do
      delete razao_social_empresa_url(@razao_social_empresa)
    end

    assert_redirected_to razao_social_empresas_url
  end
end
