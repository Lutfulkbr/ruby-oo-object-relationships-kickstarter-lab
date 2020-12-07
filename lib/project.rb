class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backer = ProjectBacker.all.select { |project| project.project == self}
        project_backer.map { |y| y.backer}
    end

end