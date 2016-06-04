require 'test_helper'

class GenreEntitiesControllerTest < ActionController::TestCase
  setup do
    @genre_entity = genre_entities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genre_entities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create genre_entity" do
    assert_difference('GenreEntity.count') do
      post :create, genre_entity: { Description: @genre_entity.Description, Name: @genre_entity.Name }
    end

    assert_redirected_to genre_entity_path(assigns(:genre_entity))
  end

  test "should show genre_entity" do
    get :show, id: @genre_entity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @genre_entity
    assert_response :success
  end

  test "should update genre_entity" do
    patch :update, id: @genre_entity, genre_entity: { Description: @genre_entity.Description, Name: @genre_entity.Name }
    assert_redirected_to genre_entity_path(assigns(:genre_entity))
  end

  test "should destroy genre_entity" do
    assert_difference('GenreEntity.count', -1) do
      delete :destroy, id: @genre_entity
    end

    assert_redirected_to genre_entities_path
  end
end
