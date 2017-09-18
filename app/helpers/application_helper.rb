module ApplicationHelper
	def list_categories
		 Category.all
	end

	def ads_available
		 Ad.first
	end
end
