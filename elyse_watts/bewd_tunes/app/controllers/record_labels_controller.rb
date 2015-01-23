class RecordLabelsController < ApplicationController
  def index
    @record_labels = RecordLabel.all
  end

  def new
  end

  def create
  end


  def edit
  end

  def update
  end

  def destroy
  end
  

  private

  def record_label_params
    params.require(:record_label).permit(:name)
  end

  def get_record_label
    @record_label = RecordLabel.find(params[:id])
  end

end
