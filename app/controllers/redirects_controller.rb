class RedirectsController < ApplicationController
  def escalate
    redirect_to "https://www.escalatebook.com"
  end

  def masterclass
    redirect_to "https://www.escalatebook.com/masterclass"
  end
end
