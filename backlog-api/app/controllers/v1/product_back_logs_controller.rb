class V1::ProductBackLogsController < ::ApplicationController
  def index
    @product_back_logs = ProductBackLog.all
    render json: @product_back_logs
  end
end
