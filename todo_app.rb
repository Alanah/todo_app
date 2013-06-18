#APP: Numbered Todo List
#FEATURES: Add Task, Delete Task, Mark Complete, View Todo List

	@todo = []

	def task_menu()
		puts ""
		puts "A: Add Task"
		puts "D: Delete Task"
		puts "C: Mark Task Complete (pending)"
		puts "V: View Todo List"
		puts "E: Exit"
		puts ""
		puts "Choose an option:"
	end	

	def add_task(addtask)
		#todo << addtask.push (alternative push method)
		@todo << addtask
	end	

	def remove_task(deletetask)
		deletetask = deletetask - 1
		@todo.delete_at(deletetask)
		#@todo.delete_if { |x| x == deletetask }  # delete by stating entire task string
	end	

	def complete_task(completed)
		completed -= 1
		@todo[completed] << " - COMPLETE" 
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

	task_menu

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
				puts "Are you sure you want to delete task '##{remove}' from the list? (Y/N)"
				task_removal = gets.chomp.capitalize
					if task_removal == "Y" 
						puts @todo
						remove_task(remove)
						view_tasks
						puts "##{remove} has been removed from the task list."
						puts ""			
					end	
			else
				puts "That is not an option."
			end	
			
	elsif option == "C"

		puts "Choose the task # you wish to mark complete: "

		finished_task = gets.chomp.capitalize
		finished_task = finished_task.to_i

		complete_task(finished_task)

		view_tasks

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
		 		 

