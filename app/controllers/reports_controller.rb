class ReportsController < ApplicationController
  def index
    @reports = Report.all
  end

  def show
    @report = Report.find(params[:id]);
  end

  def new
  end

  def edit
  end

  def create
    @report = Report.new(report_params)
    @report.save
    redirect_to @report
  end

  def update
  end

  def destroy
  end

  # public methods; as mentioned earlier in this guide, they must be placed
  # before any private or protected method in the controller in order to work.
  private
  def report_params
    params.require(:report).permit(:title, :text)
  end
end
