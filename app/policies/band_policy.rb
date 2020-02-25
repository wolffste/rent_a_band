class BandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end



  def new?
    return true
  end

  def create?
    return new?
  end

  def show?
    return new?
  end

  def edit?
    # record = the band we're authorizing
    # user = user who is currently logged in
    return record.user == user || user.admin # check that the user is the one who created the band
  end

  def update?
    return edit?
  end

  def destroy?
    return edit?
  end

  def filter?
    return new?
  end



end
