# frozen_string_literal: true

class AddLeaveAMessageToReplyTimeEnum < ActiveRecord::Migration[7.0]
  def up
    # Add comment to document the enum values
    # reply_time enum: { in_a_few_minutes: 0, in_a_few_hours: 1, in_a_day: 2, leave_a_message: 3 }
    # No schema change needed - enum values are stored as integers and the new value (3) is already supported
  end

  def down
    # Reset any inboxes using the new enum value to default
    execute <<-SQL
      UPDATE channel_web_widgets
      SET reply_time = 0
      WHERE reply_time = 3;
    SQL
  end
end
