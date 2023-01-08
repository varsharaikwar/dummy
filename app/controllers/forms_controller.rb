class FormsController < ApplicationController
    def new
        @form = Form.new
    end

    def create
        @form = Form.new(form_params)
        if @form.save
            redirect_to @form
        else
            render :new
        end
    end

    def show
        @form = Form.find(params[:id])
    end

    def destroy
        @form = Form.find(params[:id])
        @form.destroy
    
        redirect_to root_path, status: :see_other
      end

    private

    def form_params
        params.require(:form).permit(:title, :description, :date, :age, :city, :gender)
    end
end
