class PagesController < ApplicationController
    def about
        @page = Page.all
    end

    def new
        
    end

    def show
        @page = Page.find(params[:id])
        
    end

    def create
        #render plain: params[:page].inspect
        @page = Page.new(page_params)

        @page.save
        redirect_to @page
    end

    private def page_params
        params.require(:page).permit(:title, :body, :price)
    end
end
