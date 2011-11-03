require 'spec/spec_helper'

module KDL
  class Embaggen < BagIt::Bag
    def add_directory(src_dir)
      Find.find(src_dir) do |src_file|
        if File.file? src_file
          bag_file = relative_bag_path_from src_dir, src_file
          dir = File.join data_dir,
                          File.dirname(bag_file)
          FileUtils.mkdir_p dir
          begin
            add_file bag_file, src_file
          rescue
          end
        end
      end
    end

    def add_file(base_path,src_path=nil)
      path = File.join(data_dir, base_path)
      raise "Bag file exists: #{base_path}" if File.exist? path
      FileUtils::mkdir_p File.dirname(path)

      if src_path.nil?
        open(path, 'w') { |io| yield io }
      else
        `/usr/bin/rsync -avPO #{src_path} #{path}`
      end
    end

    private
    def relative_bag_path_from(src_dir, path)
      path[src_dir.length+1..-1]
    end
  end
end
