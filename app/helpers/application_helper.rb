module ApplicationHelper
	# def current_order
	# 	# Use find by id to avoit errors
	# 	if Order.find_by_id(session[:order_id]).nil?
	# 		Order.new
	# 	else
	# 		Order.find_by_id(session[:order_id])
	# 	end
	# end
	#
	include Turbo::StreamsHelper
  include Turbo::FramesHelper
end
