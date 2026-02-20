class AddAvailabilityMessagesToChannelWebWidgets < ActiveRecord::Migration[7.0]
  def change
    add_column :channel_web_widgets, :online_title, :string
    add_column :channel_web_widgets, :online_status, :string
    add_column :channel_web_widgets, :offline_title, :string
    add_column :channel_web_widgets, :offline_status, :string
  end
end
