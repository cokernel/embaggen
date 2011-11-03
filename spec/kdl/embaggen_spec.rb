require 'spec/spec_helper'

module KDL
  describe Embaggen do
    it "inherits from BagIt::Bag" do
      KDL::Embaggen.ancestors.should include BagIt::Bag
    end

    describe "#add_directory" do
      before (:each) do
        @playground = 'playground'
        @src_dir = File.join @playground, 'src'
        @bag_dir = File.join @playground, 'bag'
        FileUtils.mkdir_p @src_dir
        (1..10).each do |number|
          file = File.join @src_dir, %-#{number}.txt-
          File.open(file, 'w') { |f|
            f.write "howdy"
          }
        end
      end

      after (:each) do
        FileUtils.rm_rf @playground
      end

      it "adds all files in the given directory to the bag" do
        bagger = KDL::Embaggen.new @bag_dir
        bagger.add_directory @src_dir
        Find.find(@src_dir) do |path|
          if File.file? path
            file = File.join bagger.data_dir,
                             path[@src_dir.length+1..-1]
            File.exist?(file).should be_true
          end
        end
      end
    end
  end
end
