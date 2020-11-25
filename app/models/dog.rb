class Dog < ApplicationRecord
    has_many :employees

    def self.most_employees
        self.all.sort_by do |dog|
            dog.employees.size
        end
    end
end
