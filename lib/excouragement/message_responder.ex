defmodule Excouragement.MessageResponder do
  import ExTwiml

  def render do
    twiml do
      message "Hello there!"
    end
  end
end
