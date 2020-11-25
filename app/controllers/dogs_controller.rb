class DogsController < ApplicationController

    def index
        @dogs = Dog.all.sort_by do |dog|
            dog.most_employees
        end
    end

    def show 
        @dog = Dog.find(params[:id])
    end

  
end
