class CatsController < ApplicationController

    def index
        @cats = Cat.all 
        render :index
    end

    def show
        @cat = Cat.find_by(id: params[:id])
        render :show
    end
    
    def new
        @cat = Cat.new(cat_params)
        render :new
    end

    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            redirect_to cat_url(@cat.id)  
        else
            render json: @cat.errors.full_messages, status: 422
        end 
    end

    # def edit 
    #     @cat = find_by(id: params[:id])
    # end

    def update
        @cat = Cat.find(params[:id])
        if @cat.update(cat_params)
            redirect_to cat_url(@cat.id)
        else
            render json: @cat.errors.full_messages, status: 422
        end
    end

    def destroy 
        @cat = Cat.find(params[:id])
        render json: @cat.destroy
    end

    private 
    def cat_params
        params.require(:@cat).permit(:name, :birth_date, :color, :description, :sex)
    end
end