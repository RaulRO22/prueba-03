require "application_system_test_case"

class AplicacionsTest < ApplicationSystemTestCase
  setup do
    @aplicacion = aplicacions(:one)
  end

  test "visiting the index" do
    visit aplicacions_url
    assert_selector "h1", text: "Aplicacions"
  end

  test "creating a Aplicacion" do
    visit aplicacions_url
    click_on "New Aplicacion"

    fill_in "Descripcion", with: @aplicacion.descripcion
    fill_in "Nombre", with: @aplicacion.nombre
    click_on "Create Aplicacion"

    assert_text "Aplicacion was successfully created"
    click_on "Back"
  end

  test "updating a Aplicacion" do
    visit aplicacions_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @aplicacion.descripcion
    fill_in "Nombre", with: @aplicacion.nombre
    click_on "Update Aplicacion"

    assert_text "Aplicacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Aplicacion" do
    visit aplicacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aplicacion was successfully destroyed"
  end
end
