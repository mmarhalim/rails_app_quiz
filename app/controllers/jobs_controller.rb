class JobsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @job = Job.new()
    
    if @job.save
      render 'jobs/display'
    end
  end

  def show
    @job = Job.find_by(employment_type_id: params[:employment_type_id])
    
    if @job
      render 'jobs/display'
    end
  end

  def index
    @jobs = Job.all
    render 'jobs/index'
  end

end
