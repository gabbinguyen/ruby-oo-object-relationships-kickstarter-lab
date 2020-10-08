require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |project|
          project.backer == self
        end
        project_backers.map do |project|
          project.project
        end
      end
    # binding.pry

end
