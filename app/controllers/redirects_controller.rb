class RedirectsController < ApplicationController
  def escalate
    redirect_to "https://www.escalatebook.com"
  end

  def masterclass
    redirect_to "https://www.escalatebook.com/masterclass"
  end

  def vsco
    redirect_to "https://www.escalatebook.com/vsco"
  end

  def vip
    redirect_to "https://www.escalatebook.com/vip"
  end
end
