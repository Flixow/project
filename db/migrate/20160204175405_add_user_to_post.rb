class AddUserToPost < ActiveRecord::Migration
  def change
    add_reference :posts, :user, index: true, foreign_key: true
    user = User.first
    Post.all.each { |r| r.update(user:user) }
  end
end
