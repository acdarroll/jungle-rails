class UserMailer < ApplicationMailer

  def order_receipt(order)
    @order = order
    mail(to: @order.email, subject: "Jungle: Order receipt (Order ##{order.id})")
  end

end
