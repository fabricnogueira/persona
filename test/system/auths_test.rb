# frozen_string_literal: true

require 'application_system_test_case'

class AuthsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
    assert_selector "h1", text: "Minha Página Inicial"
    click_on "Crie sua conta"
    fill_in "Qual o seu email?", with: "basico179@hotmail.com"
  end
end  