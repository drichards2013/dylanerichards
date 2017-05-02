class RedirectsController < ApplicationController
  def escalate
    redirect_to "https://www.escalate-photography.com"
  end

  def masterclass
    redirect_to "https://www.escalate-photography.com/masterclass"
  end

  def vsco
    redirect_to "https://www.escalate-photography.com/vsco"
  end

  def vip
    redirect_to "https://www.escalate-photography.com/vip"
  end
end
