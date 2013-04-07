class EmployeeSanctionWorking < ActiveRecord::Base
	self.table_name = 'employee_sanction_working'
	belongs_to:hospital
	belongs_to:employee
end
