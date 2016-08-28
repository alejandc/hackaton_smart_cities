class NotificationsController < ApplicationController

  def index
    @notifications = Notification.all
  end

  def update
    @notification = Notification.find(params[:id])
    @notification.update_attribute(:notification_status, 'verificada')

    redirect_to notifications_path
  end

  def destroy
    @notifications = Notification.find(params[:id])
    @notifications.destroy

    redirect_to notifications_path
  end

end
