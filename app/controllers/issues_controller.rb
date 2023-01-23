class IssuesController < ApplicationController

  def index
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def edit
    @issue = Issue.find(params[:id])
  end
  
  def update
    @issue = Issue.find(params[:id])
    @issue.update(issue_params)
    redirect_to @issue, notice: 'Issue was successfully updated'
  end

  def new
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    @issue.save
    redirect_to @issue, notice: 'Issue was successfully created'
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to issues_path, alert: 'Issue was successfully deleted'
  end

  private
  def issue_params
    params.require(:issue).
      permit(:name, :status, :priority, :due_date, :description)
  end

end
