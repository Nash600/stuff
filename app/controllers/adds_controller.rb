class AddsController < ApplicationController

    def index
        if params[:category]
            @post = Add.where(:category => params[:category])
        else
        @post = Add.all
        end
    end
    def new
        @post = Add.new
    end

    def create
        post = Add.create(post_params)
        user = current_user.id
        post.update({user_id:user})
        #post.image.purge
        #post.image.attach(params[:image])
        
        post.save
        redirect_to add_path(post)
       
    end

    def show
        @post = Add.find(params[:id])
      end

      def edit 
        @post = Add.find(params[:id])
    end

    def update 
        @post = Add.find(params[:id])
        @post.update(post_params)
        redirect_to add_path(@post)
    end

    def destroy
        @post = Add.find(params[:id])
        @post.destroy 
        redirect_to adds_path
    end

private
    def post_params
    params.require(:add).permit(:title, :category, :text, :image)
    
  end

  



end
