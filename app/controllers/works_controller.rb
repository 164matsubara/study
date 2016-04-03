class WorksController < ApplicationController
    def index
        @works = Work.all
    end
    
    def create
        @work = Work.new(work_params)
    end
end
        
