class ProjectsController < ApplicationController
  before_filter :authenticate_user!

  def index
    begin
      @repos = Github.repos.list user: current_user.github_name
    rescue => exception
      flash[:info] = exception.message
    end
  end

  def show
    uri = URI.parse("https://api.github.com/repos/#{current_user.github_name}/#{params[:repo_name]}/branches")
    response = Net::HTTP.get_response(uri)
    @branches = JSON.parse(response.body)
  end
end
