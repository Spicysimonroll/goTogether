class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @public_events = Event.where(is_private: false)
  end
end
