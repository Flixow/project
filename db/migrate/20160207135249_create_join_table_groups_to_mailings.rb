class CreateJoinTableGroupsToMailings < ActiveRecord::Migration
  def change
    create_join_table :groups, :mailings do |t|
      # t.index [:group_id, :mailing_id]
      # t.index [:mailing_id, :group_id]
    end
  end
end
