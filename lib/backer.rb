class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backer = ProjectBacker.all.select { |project| project.backer == self}
        project_backer.map { |x| x.project}
    end

end