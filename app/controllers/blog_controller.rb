class BlogController < ApplicationController
    def index
        @blogs = Blog.all
        @productos = Product.all        
    end
    
    def new
        @blog = Blog.new        
    end

    def create
        @blog = Blog.new(blog_params)        
    
        if @blog.save 
            redirect_to blog_index_path, notice: "El blog ha sido guardado exitosamente"
            # flash[:notice] = "El blog ha sido guardado exitosamente"
        else
            flash[:alert] = "El blog no ha sido guardado, por favor repetir la operacion"
            render :new
        end
    end

    def show
        @blog = Blog.find(params[:id])
        @album = 
    end
    
    def edit
        @blog = Blog.find(params[:id])  
                     
    end
    
    def update
        @blog = Blog.find(params[:id]) 
        if @blog.update(blog_params)
            redirect_to blog_index_path            
        else
            render :edit
        end
    end
    
    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        redirect_to blog_index_path            
    end
    

    private
    def blog_params
        params.require(:blog).permit(:title, :content)
    end
end
