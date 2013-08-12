class CreateEmailLogs < ActiveRecord::Migration
  def change
    create_table :email_logs do |t|
      t.string   :to
      t.string   :from
      t.string   :subject
      t.text     :body
      t.datetime :created_at
    end

    add_index :email_logs, :to
    add_index :email_logs, :from
  end
end
