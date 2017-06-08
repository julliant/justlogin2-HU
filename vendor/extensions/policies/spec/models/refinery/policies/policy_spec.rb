require 'spec_helper'

module Refinery
  module Policies
    describe Policy do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:policy,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
