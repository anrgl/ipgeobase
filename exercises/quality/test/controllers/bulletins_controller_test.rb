# frozen_string_literal: true

require 'test_helper'

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  test 'opens index page with bulletins' do
    get bulletins_path

    assert_response :success
    assert_select 'h1', 'Bulletins'
    assert_select 'h2', 'First bulletin'
    assert_select 'h2', 'Second bulletin'
  end

  test 'opens show page with first bulletin' do
    get bulletin_path(bulletins(:first))

    assert_response :success
    assert_select 'h2', 'First bulletin'
    assert_select 'p', 'Body for first bulletin'
  end
end