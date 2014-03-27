require File.expand_path(File.join('../', 'spec_helper'), File.dirname(__FILE__))

describe String do
  subject { 'あいうえおやゆよわつは。'.to_gal }

  it { should eq 'ぁぃぅぇぉゃゅょゎっゎo' }
end
