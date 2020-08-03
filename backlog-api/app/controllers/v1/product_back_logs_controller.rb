class V1::ProductBackLogsController < ::ApplicationController
  def index
    @product_back_logs = ProductBackLog.all
    render json: @product_back_logs
  end

  def create
    @product_back_log = ProductBackLog.new(product_back_log_params)

    if @product_back_log.save
      render json: @product_back_log, status: :create
    else
      render json: @product_back_log.errors, status: :unprocessable_entity
    end
  end

  def update
    @product_back_log = ProductBackLog.find(params[:id])

    if @product_back_log.update(product_back_log_params)
      render json: @product_back_log
    else
      render json: @product_back_log.errors, status: :unprocessable_entity
    end
  end

  private

  def product_back_log_params
    params.require(:product_back_log).permit(:title, :completion_definition, :description, :sprint_number, :story_point)
  end
end
