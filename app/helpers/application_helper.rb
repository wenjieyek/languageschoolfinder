module ApplicationHelper

	def error_messages_for(object)
		render(:partial=>'application/error_messages',:locals=>{:object=>object})
		
	end


	def user_function_list (user) 

		
		
	end

	#used for wice_grid
	def tag_options(options, escape = true)
    
    tag_builder.tag_options(options, escape)
  	
  	end


	


end
