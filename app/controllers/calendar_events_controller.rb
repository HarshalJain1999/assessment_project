class CalendarEventsController < ApplicationController
  def index
    @events = Event.all
  end
end
