require "application_system_test_case"

class RazaoSocialEmpresasTest < ApplicationSystemTestCase
  setup do
    @razao_social_empresa = razao_social_empresas(:one)
  end

  test "visiting the index" do
    visit razao_social_empresas_url
    assert_selector "h1", text: "Razao social empresas"
  end

  test "should create razao social empresa" do
    visit razao_social_empresas_url
    click_on "New razao social empresa"

    fill_in "Fornecedores", with: @razao_social_empresa.fornecedores
    fill_in "Razao social", with: @razao_social_empresa.razao_social
    click_on "Create Razao social empresa"

    assert_text "Razao social empresa was successfully created"
    click_on "Back"
  end

  test "should update Razao social empresa" do
    visit razao_social_empresa_url(@razao_social_empresa)
    click_on "Edit this razao social empresa", match: :first

    fill_in "Fornecedores", with: @razao_social_empresa.fornecedores
    fill_in "Razao social", with: @razao_social_empresa.razao_social
    click_on "Update Razao social empresa"

    assert_text "Razao social empresa was successfully updated"
    click_on "Back"
  end

  test "should destroy Razao social empresa" do
    visit razao_social_empresa_url(@razao_social_empresa)
    click_on "Destroy this razao social empresa", match: :first

    assert_text "Razao social empresa was successfully destroyed"
  end
end
