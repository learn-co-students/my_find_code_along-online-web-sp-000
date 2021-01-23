require_relative 'spec_helper'
require_relative '../lib/my_find.rb'

describe "#my_find" do
  let(:collection) { (1..100).to_a }

  it "does not call on #find" do
    expect(collection).to_not receive(:find)
  end

  it "can handle an empty collection" do
    counter=0
    my_find([]) do |x|
      counter+=1
    end
    expect(counter).to eq(0)
  end

 



end
