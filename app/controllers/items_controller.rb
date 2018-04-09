class ItemsController < ApplicationController
    def index
        @items = Item.all
    end

    def new
        #@items = Item.new
        @item_types = ItemType.all
    end

    def create
        @item = Item.new(item_params)


        if @item.save
            redirect_to items_path
        else
            #respond with 500 error
        end
    end

    def show
        @item = Item.find(params[:id])
    end

    def edit
        @item = Item.find(params[:id])
        @item_types = ItemType.all
    end

    def update
        item = Item.find(params[:id])
        item.update(item_params)

        if item.save
            redirect_to items_path
        else
            redirect_to root_path
        end
    end

    def destroy
        item = Item.find(params[:id]).destroy
        redirect_to items_path
    end

    private
    def item_params
        params.permit(:label, :description, :price,  :item_type_id)
    end

end