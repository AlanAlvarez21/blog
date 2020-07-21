class PagesController < ApplicationController
    before_action :set_page, only: [:show, :edit, :update, :destroy]
    def index
        @pages = Page.all
    end 

    def show 
        #@page = Page.find(params[:id])
        #set_page
    end

    def new
        @page = Page.new
    end

    def create 
        #page_params = params.require(:page).permit(:title, :body, :slug)
        @page = Page.new(page_params)
        #set_page
        @page.save
        redirect_to @page
    end 


    def edit 
        #@page = Page.find(params[:id])
        #set_page
    end 

    def destroy 
        #@page = Page.find(params[:id])
        #set_page
        @page.destroy
        redirect_to pages_path
    end 

    def update 
        # Look up the existing model record based
        # on an ID from the request path.
        #@page = Page.find(params[:id])
        #set_page
        # Filter the form parameters to ensure no
        # malicious parameters were added.
        # Use the filtered parameters to update
        #page_params = params.require(:page).permit(:title, :body, :slug)

        # the existing model record.
        @page.update(page_params)
        # Redirect the browser to another location
        # so that it doesn't just sit there displaying
        # the submitted form.
        redirect_to @page
    end 

    private 

            def page_params #metodo para crear o editar objetos 
                    params.require(:page).permit(:title, :body, :slug)
            end 

            def set_page 
                    @page = Page.find(params[:id])

            end 

end
