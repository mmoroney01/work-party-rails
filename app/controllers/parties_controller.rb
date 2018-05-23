class PartiesController < ApplicationController
  def index
    render 'index/index'
  end

  def create
    hash = make_party_hash(params)
    @party = Party.create(hash)

    respond_to do |f|
      f.html { redirect_to root_path }
      f.js
    end
  end

  def show
    @party = Party.find(params[:id])

  	render 'show'
  end

  def delete
    @party = Party.destroy(params[:id])

    respond_to do |f|
      f.html { redirect_to root_path }
      f.js
    end
  end

  private

  def make_party_hash(params)
    party_hash = Hash.new

    params.each do |k,v|
      if k == "time" || k == "place"
        party_hash[k.to_sym] = v
      end
    end

    party_hash[:user_id] = current_user.id
    
    return party_hash
  end
end