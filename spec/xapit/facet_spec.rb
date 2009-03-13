require File.dirname(__FILE__) + '/../spec_helper'

describe Xapit::Facet do
  describe "with database" do
    before(:each) do
      XapitMember.delete_all
      XapitMember.xapit do |index|
        index.facet :visible
      end
      Xapit::Config.setup(:database_path => File.dirname(__FILE__) + '/../tmp/xapiandb')
      Xapit::Config.remove_database
    end
    
    describe "indexed" do
      before(:each) do
        @visible1 = XapitMember.new(:visible => true)
        @visible2 = XapitMember.new(:visible => true)
        @invisible = XapitMember.new(:visible => false)
        Xapit::IndexBlueprint.index_all
      end
      
      describe "facet from empty search" do
        before(:each) do
          @facet = XapitMember.search("").facets.first
        end
      
        it "should have the name of 'Visible'" do
          @facet.name.should == 'Visible'
        end
      
        it "should have true and false options" do
          @facet.options.map(&:name).sort.should == %w[false true]
        end
      
        it "should have record count" do
          @facet.options.detect { |o| o.name == 'true' }.count.should == 2
          @facet.options.detect { |o| o.name == 'false' }.count.should == 1
        end
      
        it "should have identifier" do
          blueprint = Xapit::FacetBlueprint.new(0, :visible)
          @facet.options.detect { |o| o.name == 'true' }.identifier.should == blueprint.identifier_for(@visible1)
          @facet.options.detect { |o| o.name == 'false' }.identifier.should == blueprint.identifier_for(@invisible)
        end
      
        it "should return identifier on to_param" do
          blueprint = Xapit::FacetBlueprint.new(0, :visible)
          @facet.options.detect { |o| o.name == 'true' }.to_param.should == blueprint.identifier_for(@visible1)
        end
      end
      
      it "should not list facets if only one option is found" do
        blueprint = Xapit::FacetBlueprint.new(0, :visible)
        facets = XapitMember.search("", :facets => blueprint.identifier_for(@visible1)).facets
        facets.should be_empty
      end
    end
  end
end