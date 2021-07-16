class Employee

    attr_reader :name

    def name= (name)
        if name == ""
            raise "Name can't be blank!"
        end
        # @name = name
    end

    def print_name
        puts "Name: #{name}"
    end
end

class SalariedEmployee < Employee

    attr_reader :salary

    def salary= (salary)
        if salary < 0
            raise "A salary of #{salary} isn't valid!"
        end
        @salary = salary
    end

    def initialize (name = "Anonymous", salary = 0.0)
        self.name = name
        self.salary = salary
    end

    def print_pay_stub
        print_name
        pay_for_period = (self.salary / 365.0) * 14
        formatted_pay = format("%.2f", pay_for_period)
        puts "Pay This Period: $#{formatted_pay}"
    end

end

class HourlyEmployee < Employee

    # Reading the houry_wage and hours_per_week
    attr_reader :hourly_wage, :hours_per_week

    # Method to set the hourly wage
    def hourly_wage= (hourly_wage)
        # fill in later
    end
    
    # Method to set the hours per week
    def hours_per_week= (hours_per_week)
        # fill in later
    end
    
    # initallzing name, hourly wage and hours per week and populating default values.
    def initialize (name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
        self.name = name
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end

    def print_pay_stub
        print_name
        pay_for_period = hourly_wage * hours_per_week * 2
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end

end

salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
salaried_employee.print_pay_stub

hourly_employee = HourlyEmployee.new("John Smith", 14.97, 30)
hourly_employee.print_pay_stub

# amy = Employee.new
# amy.name = "Amy Blake"
# amy.salary = 50000
# amy.print_pay_stub

# kara = Employee.new
# kara.name = "Kara"

# ben = Employee.new
# ben.salary = 246

# Employee.new("Amy Blake", 60000).print_pay_stub
