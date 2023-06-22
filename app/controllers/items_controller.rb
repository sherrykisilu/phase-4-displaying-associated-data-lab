class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items, include: { user: { only: [:id, :username, :city] } }
      end
end
