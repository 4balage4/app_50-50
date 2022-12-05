class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all.where(household: user.household).order('updated_at DESC')
    end
  end

  def show?
    true
  end

  def score?
    true
  end


  def mark_as_done?
    true
  end

  def create?
    true
  end

  def duplicate?
    true
  end

  def update?
    record.household == user.household
    # record: the restaurant passed to the `authorize` method in controller
    # user: the `current_user` signed in with Devise
  end

  def destroy?
    record.household == user.household
  end
end
