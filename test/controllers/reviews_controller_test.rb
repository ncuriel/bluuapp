require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should create review" do
    assert_difference('Review.count') do
      post reviews_url, params: { review: { advancement: @review.advancement, average_hours: @review.average_hours, considered: @review.considered, currently_work: @review.currently_work, full_time: @review.full_time, hourly_pay: @review.hourly_pay, id: @review.id, insurance: @review.insurance, length_months: @review.length_months, manager: @review.manager, position_title: @review.position_title, recommend: @review.recommend, sick_days: @review.sick_days, support: @review.support, vacation_days: @review.vacation_days } }
    end

    assert_redirected_to review_url(Review.last)
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end

  test "should update review" do
    patch review_url(@review), params: { review: { advancement: @review.advancement, average_hours: @review.average_hours, considered: @review.considered, currently_work: @review.currently_work, full_time: @review.full_time, hourly_pay: @review.hourly_pay, id: @review.id, insurance: @review.insurance, length_months: @review.length_months, manager: @review.manager, position_title: @review.position_title, recommend: @review.recommend, sick_days: @review.sick_days, support: @review.support, vacation_days: @review.vacation_days } }
    assert_redirected_to review_url(@review)
  end

  test "should destroy review" do
    assert_difference('Review.count', -1) do
      delete review_url(@review)
    end

    assert_redirected_to reviews_url
  end
end
