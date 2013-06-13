

	@todo = []


	def add_task(addtask)
		#todo << addtask.push
		@todo << addtask
		#would like to assign a # to each task
	end	

	def remove_task(deletetask)
		#@todo.pop(deletetask)
		#@todo.select {|d| d.match(/^deletetask/)}
		#@todo.select {|d| d.include? 'deletetask' }
		#@todo.delete('deletetask')
		@todo.delete_if { |x| x == "deletetask" }
		#@todo.delete_if { |task| !task.delete(deletetask) }
	end	

	def complete_task(completed)

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

		add = gets.chomp.downcase.to_s

		if add != 'done'
			add_task(add)
			puts ""
			puts "******TODO LIST******"
			puts @todo	
			puts "*********************"
			puts ""
			puts "You have added '#{add}' to the list."
			puts ""
			option_selected = "n"
		else
			puts "You have finished adding to the todo list."	
		end	

	elsif option == "D"
		puts "Name the task you wish to delete"
		remove = gets.chomp
			if remove != nil
				puts "Are you sure you want to delete '#{remove}' from the list? (Y/N)"
				task_removal = gets.chomp.upcase
					if task_removal == "Y" 
						puts @todo
						remove_task(remove)
						puts "'#{remove}' has been deleted"		
						puts ""
						puts "******TODO LIST******"
						puts @todo	
						puts "*********************"
						puts ""		
					end	

			else
				puts "That is not an option."
			end	
			

	elsif option == "C"
		puts "Sorry, this option is under construction"
		
		#puts "Name the task you wish to mark complete"

	elsif option == "V"		
		puts ""
		puts "******TODO LIST******"
		puts @todo
		puts "*********************"
		puts ""
		puts ""
		option_selected = "n"


	elsif option == "E"
		puts "You have exited the program."
		option_selected = "y"

	else
		puts "That option is not available."	
	end	


end	
		 		 

