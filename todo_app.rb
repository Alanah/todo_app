
@todo = []

	def add_task(addtask)
		#todo << addtask.push
		@todo.push(addtask)
	end	

	def remove_task(deletetask)

	end	

	def complete_task(completed)

	end		

	puts "1. Add Task"
	puts "2. Remove Task"
	puts "3. Mark Task Complete" 
	puts "4. View Todo List"
	puts ""
	puts "Choose an option:"
	
	option = gets.chomp

	if option == "1"
		puts "Name the task you wish to add:"
		add = gets.chomp
		add_task(add)

	elsif option == "2" 
		puts "Name the task you wish to delete"
		remove = gets.chomp
		remove_task(deletetask)
	elsif option == "3"
		puts "Name the task you wish to mark complete"
	elsif option == "4"
	puts "******TODO LIST******"
		@todo[]	
	else
		puts "That option is not available."		
	end	
		 		 
puts "******TODO LIST******"

puts @todo
