module ApplicationHelper

	def error_messages_for(object)
		render(:partial=>'application/error_messages',:locals=>{:object=>object})
		
	end


	def user_function_list (user) 

		
		
	end


	


end
