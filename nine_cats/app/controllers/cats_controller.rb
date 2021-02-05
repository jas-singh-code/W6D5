class Cats_Controller < ApplicationController
    def index
        cats = Cat.all 
        render json: cats
    end

    def show
        cat = Cat.find_by(id: params[:id])
        render json: cat 
    end    

    def create
        cat = Cat.new(cat_params)
        if cat.save! 
            redirect_to cat_url(cat.id)  
        else
            render json: cat.errors.full_messages, status: 307
        end 
    end

    # def edit 
    #     cat = find_by(id: params[:id])

    # end

    def update
        cat = Cat.find_by(id: params[:id])
        cat.update(cat_params)
        if cat.save! 
            redirect_to cat_url(cat.id)
        else
            render json: cat.errors.full_messages, status: 307 
        end
    end

    def destroy 
        cat = Cat.find(params[:id]
        cat.destroy
        render json: cat 
    end

    private 
    
    def cat_params
        params.require(:cat).permit(:name, :birth_date, :color, :description, :sex)
    end
end