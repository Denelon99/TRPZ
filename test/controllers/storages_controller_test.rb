# frozen_string_literal: true

require 'test_helper'

class StoragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storage = storages(:one)
  end

  test 'should get index' do
    get storages_url
    assert_response :success
  end

  test 'should get new' do
    get new_storage_url
    assert_response :success
  end

  test 'should create storage' do
    assert_difference('Storage.count') do
      post storages_url,
           params: { storage: { commodities_id: @storage.commodities_id, location: @storage.location, mame: @storage.mame,
                                users_id: @storage.users_id } }
    end

    assert_redirected_to storage_url(Storage.last)
  end

  test 'should show storage' do
    get storage_url(@storage)
    assert_response :success
  end

  test 'should get edit' do
    get edit_storage_url(@storage)
    assert_response :success
  end

  test 'should update storage' do
    patch storage_url(@storage),
          params: { storage: { commodities_id: @storage.commodities_id, location: @storage.location, mame: @storage.mame,
                               users_id: @storage.users_id } }
    assert_redirected_to storage_url(@storage)
  end

  test 'should destroy storage' do
    assert_difference('Storage.count', -1) do
      delete storage_url(@storage)
    end

    assert_redirected_to storages_url
  end
end
