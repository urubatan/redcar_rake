module Redcar
  
  class RedcarRake
    def self.menus      
      Menu::Builder.build do
        sub_menu "Plugins" do
          sub_menu "Rake" do
            item "Run Rake Command!", RunRakeCommand
          end
        end
      end
    end
    class RunRakeCommand < Redcar::Command
      def execute
        path = Project::Manager.focussed_project.path
        puts path
        output = `cd "#{path}" && rake -T`
      end
    end
  end
end