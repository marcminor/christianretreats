require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

	test "layout links" do 
		get root_path
		assert_template 'static_pages/home', count: 2
		assert_select	"a[href=?]", signup_path
		assert_match	"Log In", response.body
		assert_select	"a[href=?]", contact_path, count: 2
		assert_match "List Your Retreat", response.body
		assert_select	"a[href=?]", about_path
	end

	test "unique headers" do 
		get root_path
		assert_select "div#home_header"
		get contact_path
		assert_select "div#header"
	end
end
