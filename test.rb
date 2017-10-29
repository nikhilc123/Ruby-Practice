class Test
  require 'json'
  def introduction
    puts "\nWelcome User"
    puts "Press C to continue, any other key to quit"
  end

  def first_choice
    input = STDIN.gets.chomp.downcase
    puts "#{input}"
    if input == 'c'
      puts "Choose your action to proceed: "
      puts "1. View attributes"
      puts "2. Search record"
      puts "3. exit"
      puts "Enter the number: "
      value = gets.chomp.to_i
      second_choice(value) if value == 1
      third_choice if value == 2
    end
  end

  def second_choice(value)
    if value == 1
      puts "View Attributes for: "
      puts "1. Employee"
      puts "2. Address"
      puts "3. Department"
      puts "Enter your choice: "
      choice = gets.chomp.to_i
      case(choice)
        when 1
          file = File.read("E:/Coding Challenge/coding challenge 1/employees.json")
          data = JSON.parse(file)
          puts "Here are the attributes of all the Employee"
          data.each do |dat|
            print "\nId: #{dat["id"]}"
            print "\nFirst Name: #{dat["first_name"]}"
            print "\nLast Name: #{dat["last_name"]}"
            print "\nDept Id: #{dat["dept_id"]}"
            puts "\n"
          end
          introduction
          first_choice
        when 2
          file = File.read("E:/Coding Challenge/coding challenge 1/addresses.json")
          data = JSON.parse(file)
          puts "Here are the attributes of the Addresses"
          data.each do |dat|
            print "\nId: #{dat["id"]}"
            print "\nCity: #{dat["city"]}"
            puts "\n"
          end
          introduction
          first_choice
        when 3
          file = File.read("E:/Coding Challenge/coding challenge 1/departments.json")
          data = JSON.parse(file)
          puts "Here are the attributes of Departments"
          data.each do |dat|
            print "\nId: #{dat["id"]}"
            print "\nName: #{dat["name"]}"
            puts "\n"
          end
          introduction
          first_choice
        end
     end
  end
  def third_choice
    puts "Press C to continue, any other key to quit"
    input = STDIN.gets.chomp.downcase
    if input == 'c'
      puts "1. View attributes"
      puts "2. Search record"
      puts "Enter the number: "
      value = gets.chomp.to_i
      if value == 1
        second_choice(value)
      elsif value == 2
        puts "Search Records for: "
        puts "1. Employee"
        puts "2. Address"
        puts "3. Department"
        puts "Enter your choice: "
        choice = gets.chomp.to_i
        case choice
          when 1
            file1 = File.read("E:/Coding Challenge/coding challenge 1/employees.json")
            file2 = File.read("E:/Coding Challenge/coding challenge 1/addresses.json")
            file3 = File.read("E:/Coding Challenge/coding challenge 1/departments.json")
            data1 = JSON.parse(file1)
            data2 = JSON.parse(file2)
            data3 = JSON.parse(file3)
            # puts "Enter attribute name: "
            # title = gets.chomp
            # puts "Enter value: "
            # val = gets.chomp
            puts "#{data1}"
            # if h = data1.find { |h| p h['first_name'] == 'John' }
            #   p h['first_name']
            # else
            #   puts 'Not found!'
            # end
            puts "Enter attribute name: "
            title = gets.chomp
            puts "Enter value: "
            val = gets.chomp

            puts "#{data1['title']}"

            # data1.each do |data|
            #   if data['title'] == data['val']
            #     puts "First Name: #{data['title']}"
            #     puts "Last Name: #{data['val']}"
            #     puts "Dept Id: #{data['dept_id']}"
            #   end
            # end
            introduction
        end
      else
        puts "Wrong selection!"
      end
    end
  end

  test = Test.new
  test.introduction
  test.first_choice
end
