class PostPolicy < ApplicationPolicy
  def update?
    record.user_id == user.id || user.type == 'AdminUser'
  end
end