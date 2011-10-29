require 'definite'

describe TableDefinition do

  context "the model class" do
    subject { TableDefinition }

    it { should respond_to(:define) }
  end

end
