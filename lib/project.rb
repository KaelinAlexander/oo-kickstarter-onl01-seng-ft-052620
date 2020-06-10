class Project
  attr_accessor :name
  attr_reader :backers
  
  def initialize(name)
    @name = name
    @backers = []
  end
  
  def add_backer(name)
    @backers << name
    name.backed_projects = self unless name.backed_projects == self
  end
  
end