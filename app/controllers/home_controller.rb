class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @result = []
    if params[:search].present?
      like_sentence = 'name ILIKE ?'
      query = "%#{params[:search]}%"

      channels = Channel.where(like_sentence, query)
      shows = Show.where(like_sentence, query)

      @result = (channels + shows).sort_by(&:name)
    end
  end
end
