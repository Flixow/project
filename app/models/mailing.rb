class Mailing < ActiveRecord::Base

  has_many :groups_mailings
  has_many :groups, through: :groups_mailings

  def success job
    save_completed_job job
  end

  def delivering

    groups.each do |group|
      group.users.each do |user|           
        FirstMailer.sample_email(user,template).deliver
      end
    end
    
  end

  private

  def save_completed_job job
    Mailing.where(id: job.queue).update_all(delivered_at: Time.now)
  end

end