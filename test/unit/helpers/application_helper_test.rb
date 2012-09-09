require 'test_helper'
require 'action_view/test_case'

class ApplicationHelperTest < ActionView::TestCase
	test "iframe helper match <iframe>" do
    	match = match_iframe("<iframe></iframe>")
    	render text: match[0]
    	assert_select "iframe", 1
	end

	test "iframe helper doesn't match non <iframe>" do
    	match = match_iframe("<b></b>")
    	assert (!match)
	end

end
