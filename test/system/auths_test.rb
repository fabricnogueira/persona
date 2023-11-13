# frozen_string_literal: true

require 'application_system_test_case'

class AuthsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Minha Página Inicial"
    click_on "Registrar"
    fill_in "Email", with: "basico179@hotmail.com"

  end
end