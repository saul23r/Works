require 'test_helper'

class ProductsControllerTest < ActionController::TestCase


  test "should require login" do

    logout

    get products_url

    follow_redirect!

    assert_select 'legend', 'Please Log In'

  end



  setup do
    @product = products(:one)

    @update = {

        title:'Lorem Ipsum',
        description: 'Wibbles are fun!',
        image_url:   'lorem.jpg',
        price:       19.95

    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: @update }
    end

    assert_redirected_to product_path(assigns(:product))
  end
  #...
  test "should show product" do
    patch product_url(@product), params: { product: @update }
    assert_response :success
  end
  # ...
  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { description: @product.description, image_url: @product.image_url, price: @product.price, title: @product.title }
    assert_redirected_to product_path(assigns(:product))
  end


  test "can't delete product in cart" do

    assert_difference('Product.count', 0) do

      delete product_url(products(:two))

    end
end

    assert_redirected_to products_url

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end






end
