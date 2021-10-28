require './lib/caesar_cipher'

describe '#ceasar_cipher' do
  it "shifts up" do
    expect(caesar_cipher("aaa", 2)).to eq("ccc")
  end

  it "shifts down" do
    expect(caesar_cipher("aaa", -2)).to eq("yyy")
  end

  it "shifts sentance" do
    expect(caesar_cipher("I love pancakes", 1)).to eq("J mpwf qbodblft")
  end

  it "Does not shift symbols or numbers" do
    expect(caesar_cipher("I l0v3 p@nc@k3s", 1)).to eq("J m0w3 q@od@l3t")
  end

  it "Works with crazy numbers" do
    expect(caesar_cipher("I love pancakes", 780)).to eq("I love pancakes")
  end

  it "Works with crazy numbers" do
    expect(caesar_cipher("I love pancakes", 784)).to eq("M pszi tergeoiw")
  end
end