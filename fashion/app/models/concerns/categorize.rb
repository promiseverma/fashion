module Categorize
	extend ActiveSupport::Concern
	
	include do
		belongs_to :category
	end

	
end