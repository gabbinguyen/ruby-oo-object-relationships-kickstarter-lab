class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer = ProjectBacker.all.select do |backer|
            backer.project == self
        end
        project_backer.map do |backer|
            backer.backer 
        end
    end
end
