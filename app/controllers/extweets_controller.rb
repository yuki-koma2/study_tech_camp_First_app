class ExtweetsController < ApplicationController
    def index
        @extweet = Extweet.all.order('id ASC')
    end
    
    def show
    end
    
    def new
        @extweet = Extweet.new
    end
    
    def create
        Extweet.create(create_params)
        redirect_to action: :index
        # binding.pry
    end
    
    def edit
        @extweet = Extweet.find(params[:id])
    end
    
    def update
        extweet = Extweet.find(params[:id])
        extweet.update(create_params)
        redirect_to action: :index
    end
    
    def delete
    end
    
    
    private
    def create_params
        params.require(:extweet).permit(:title, :text)
    end

end
