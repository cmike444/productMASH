require 'test_helper'

class MashesControllerTest < ActionController::TestCase
  setup do
    @mash = mashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mash" do
    assert_difference('Mash.count') do
      post :create, mash: { assembly: @mash.assembly, barriers: @mash.barriers, durability: @mash.durability, efficiency: @mash.efficiency, learning_curve: @mash.learning_curve, lifespan: @mash.lifespan, pleasure: @mash.pleasure, process: @mash.process, proportion: @mash.proportion, recycle: @mash.recycle, safety: @mash.safety, scale: @mash.scale, semantics: @mash.semantics }
    end

    assert_redirected_to mash_path(assigns(:mash))
  end

  test "should show mash" do
    get :show, id: @mash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mash
    assert_response :success
  end

  test "should update mash" do
    patch :update, id: @mash, mash: { assembly: @mash.assembly, barriers: @mash.barriers, durability: @mash.durability, efficiency: @mash.efficiency, learning_curve: @mash.learning_curve, lifespan: @mash.lifespan, pleasure: @mash.pleasure, process: @mash.process, proportion: @mash.proportion, recycle: @mash.recycle, safety: @mash.safety, scale: @mash.scale, semantics: @mash.semantics }
    assert_redirected_to mash_path(assigns(:mash))
  end

  test "should destroy mash" do
    assert_difference('Mash.count', -1) do
      delete :destroy, id: @mash
    end

    assert_redirected_to mashes_path
  end
end
