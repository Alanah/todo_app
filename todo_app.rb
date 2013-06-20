#APP: Numbered Todo List
#FEATURES: Add Task, Delete Task, Mark/Unmark Complete, View Todo List, Date task was added, Date task was completed

#todo array that stores the numbered tasks
	@todo = []

#Shows the todo task menu
	def task_menu()
		puts "\n"
		puts "A: Add Task"
		puts "D: Delete Task"
		puts "C: Mark Task Complete"
		puts "U: Unmark Task Complete"
		puts "V: View Todo List"
		puts "E: Exit"
		puts "\n"
		puts "Choose an option:"
	end	

#adds a task to the todo list
	def add_task(addtask)
		#todo << addtask.push (alternative push method)
		@@date = Time.new
		@todo << addtask + @@date.strftime(" - %m/%d/%y (added)")
	end	

#removes a task from the todo list
	def remove_task(deletetask)
		deletetask -= 1
		@todo.delete_at(deletetask)
		#@todo.delete_if { |x| x == deletetask }  # deletes a task by stating entire task string instead of specifying #
	end	

#marks a task complete on the todo list
	def complete_task(completed)
		completed -= 1
		@todo[completed] << @@date.strftime(" / (completed on %m/%d/%y)")
	end	

#unmarks a task complete on the todo list
	def unmark_task(unmark)
		unmark -= 1
		puts @todo[unmark]
		@todo[unmark].gsub!(/ \/ \(completed on .*\)/, '')
	end	

#view the current tasks on the todo list
	def view_tasks()	
		puts "\n"
		puts "***********TODO LIST***********"
		@todo.each_with_index { |task, index| puts "#{index + 1}. #{task}" }
		puts "*******************************"
		puts "\n"
	end	

#the initial option_selected var is set to "n" for no option has been selected as of yet
option_selected = "n"	

#while option has not been selected yet, show the menu to the user
while option_selected == "n"  do

	task_menu()

	option = gets.chomp.upcase

	if option == "A"		
		puts "Name the task you wish to add or type 'done' to return to the main menu: "

		add = gets.chomp.capitalize

		if add != 'Done'
			add_task(add)
			view_tasks()
			puts "You have added '#{add}' to the list."
			puts "\n"
			option_selected = "n"
		else
			puts "\n"
			puts "You have NOT added a task and have returned to the main menu."	
		end	

	elsif option == "D"

		view_tasks()

		puts "Choose the task # you wish to delete: "
		
		remove = gets.chomp.capitalize.to_i

			if remove != nil
				puts "Are you sure you want to delete task '##{remove}' from the list? (Y/N)"
				task_removal = gets.chomp.capitalize
					if task_removal == "Y" 
						puts @todo
						remove_task(remove)
						view_tasks()
						puts "##{remove} has been removed from the task list."
						puts "\n"			
					end	
			else
				puts "That is not an option."
			end	
			
	elsif option == "C"

		view_tasks()

		puts "Choose the task # you wish to mark complete: "

		mark_complete = gets.chomp.capitalize.to_i

		complete_task(mark_complete)

		view_tasks()

	elsif option == "U"

		view_tasks()

		puts "Choose the task # you wish to unmark complete: "

		unmark_complete = gets.chomp.capitalize.to_i

		unmark_task(unmark_complete)

		view_tasks()

	elsif option == "V"	

		view_tasks()

		option_selected = "n"

	elsif option == "E" || option == "EXIT" || option == "QUIT"
		puts "You have exited the Todo List App."
		option_selected = "y"

	else
		puts "That option is not available."	
	end	
end	
		 		 

