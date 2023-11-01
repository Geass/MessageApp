class SessionsController < ApplicationController

    def app
        @messages = Message.all
    end
end
  