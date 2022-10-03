class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["claire", "toni", "santi", "sarah", "olivier"]

    search = params[:member] #what they typed in the form

    if search
      @members = @members.select do |member|
        member.start_with? search.downcase
      end
    end
  end
end
