require "spec_helper"

describe AlternatingSeries do

  let(:f) {
    f_klass = Class.new do
      extend AlternatingSeries
      series :foo, %w{ toto titi billabong }
    end
    f_klass.new
  }

  it "should return all members of its array, in order" do
    [f.foo, f.foo, f.foo, f.foo, f.foo, f.foo, f.foo].should == %w{ toto titi billabong toto titi billabong toto }
  end

  it "should return the last #foo" do
    f.foo.should == "toto"
    f.last_foo.should == "toto"
    f.foo.should == "titi"
    f.last_foo.should == "titi"
  end

  it "should reset #foo to the beginning of its series" do
    f.foo.should == "toto"
    f.foo.should == "titi"
    f.reset_foo
    f.foo.should == "toto"
    f.foo.should == "titi"
  end
end
