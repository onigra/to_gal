require File.expand_path(File.join('../', 'spec_helper'), File.dirname(__FILE__))

describe String do
  describe '#to_gal' do

    context 'あいうえおやゆよわつは。' do
      subject { 'あいうえおやゆよわつは。'.to_gal }

      it { should eq 'ぁぃぅぇぉゃゅょゎっゎo' }
    end

    context 'あ' do
      subject { 'あ'.to_gal }

      it { should eq 'ぁ' }
    end

    context 'い' do
      subject { 'い'.to_gal }

      it { should eq 'ぃ' }
    end

    context 'う' do
      subject { 'う'.to_gal }

      it { should eq 'ぅ' }
    end

    context 'え' do
      subject { 'え'.to_gal }

      it { should eq 'ぇ' }
    end

    context 'お' do
      subject { 'お'.to_gal }

      it { should eq 'ぉ' }
    end

    context 'や' do
      subject { 'や'.to_gal }

      it { should eq 'ゃ' }
    end

    context 'ゆ' do
      subject { 'ゆ'.to_gal }

      it { should eq 'ゅ' }
    end

    context 'よ' do
      subject { 'よ'.to_gal }

      it { should eq 'ょ' }
    end

    context 'わ' do
      subject { 'わ'.to_gal }

      it { should eq 'ゎ' }
    end

    context 'つ' do
      subject { 'つ'.to_gal }

      it { should eq 'っ' }
    end

    context 'は' do
      subject { 'は'.to_gal }

      it { should eq 'ゎ' }
    end

    context '。' do
      subject { '。'.to_gal }

      it { should eq 'o' }
    end

    context '繰り返し文字' do
      context 'そもそも' do
        subject { 'そもそも'.to_gal }

        it { should eq 'そも②' }
      end

      context 'いろいろ' do
        subject { 'いろいろ'.to_gal }

        it { should eq 'ぃろ②' }
      end
    end

  end
end
