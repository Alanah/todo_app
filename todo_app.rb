#APP: Numbered Todo List
#FEATURES: Add Task, Delete Task, Mark Complete, View Todo List

	@todo = []

	def add_task(addtask)
		#todo << addtask.push (alternative push method)
		@todo << addtask
	end	

	def remove_task(deletetask)
		deletetask = deletetask - 1
		puts @todo.delete_at(deletetask)
		#@todo.delete_if { |x| x == deletetask }  # delete by stating entire task string
	end	

	def complete_task(completed)

	end		

	def view_tasks()	
		puts ""
			puts "******TODO LIST******"
			@todo.each_with_index { |task, index| puts "#{index + 1}. #{task}" }
			puts "*********************"
			puts ""
	end	

option_selected = "n"	

while option_selected == "n"  do

	puts "A: Add Task"
	puts "D: Delete Task"
	puts "C: Mark Task Complete (pending)"
	puts "V: View Todo List"
	puts "E: Exit"
	puts ""
	puts "Choose an option:"

	option = gets.chomp.upcase

	if option == "A"		
		puts "Name the task you wish to add: "

		add = gets.chomp.capitalize

		if add != 'done'
			add_task(add)
			view_tasks
			puts "You have added '#{add}' to the list."
			puts ""
			option_selected = "n"
		else
			puts "You have finished adding to the todo list."	
		end	

	elsif option == "D"
		view_tasks
		puts "Choose the task # you wish to delete: "
		
		remove = gets.chomp.capitalize.to_i

			if remove != nil
				puts "Are you sure you want to delete '#{remove}' from the list? (Y/N)"
				task_removal = gets.chomp.capitalize
					if task_removal == "Y" 
						puts @todo
						remove_task(remove)
						view_tasks
						puts @todo.each
						#puts @todo.fetch("#{remove}")"'#{remove}' has been deleted."
						puts ""			
					end	
			else
				puts "That is not an option."
			end	
			
	elsif option == "C"

		puts "Name the task you wish to mark complete: "

		finished_task = gets.chomp.capitalize

	elsif option == "V"		
		view_tasks
		option_selected = "n"

	elsif option == "E" || option == "EXIT" || option == "QUIT"
		puts "You have exited the Todo List App."
		option_selected = "y"

	else
		puts "That option is not available."	
	end	
end	
		 		 

