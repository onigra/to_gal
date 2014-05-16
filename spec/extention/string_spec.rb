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

  #
  #
  # Quotation From These Blogs
  #
  # ギャルでもゎかる自作pc
  # http://ameblo.jp/upgrade-ayp/
  #
  # ayapi.github.io
  # http://ayapi.github.io/
  #
  #
  context '文章' do
    context 'case1' do
      let(:text) { '移動がとても多いよーなシーンではつらいけど、そーじゃなくて、おなじ場所にずっとあればいいなら、ベアボーン＆USBディスプレイは、かなりおすすめ' }
      subject { text.to_gal}

      it { should eq '移動がとても多ぃょーなシーンでゎっらぃけど、そーじゃなくて、ぉなじ場所にずっとぁればぃぃなら、ベアボーン＆USBディスプレイゎ、かなりぉすすめ' }
    end

    context 'case2' do
      let(:text) { '安いのに、わりと、いいかんじだったよ' }
      subject { text.to_gal}

      it { should eq '安ぃのに、ゎりと、ぃぃかんじだったょ' }
    end

    context 'case3' do
      let(:text) { 'まぁまぁそこそこわかってる系です(やたら詳しいわけでもないけど)' }
      subject { text.to_gal}

      it { should eq 'まぁ②そこ②ゎかってる系です(ゃたら詳しぃゎけでもなぃけど)' }
    end

    context 'case4' do
      let(:text) { 'かなりやばくて、エラーが多いってゆーか' }
      subject { text.to_gal}

      it { should eq 'かなりゃばくて、エラーが多ぃってゅーか' }
    end

    context 'case5' do
      let(:text) { 'getが1秒後に成功してから、sendが実行されますけどsendでは1秒後に必ずエラーが発生して、saveは実行されずにおわり、とゆーかんじです' }
      subject { text.to_gal}

      it { should eq 'getが1秒後に成功してから、sendが実行されますけどsendでゎ1秒後に必ずエラーが発生して、saveゎ実行されずにぉゎり、とゅーかんじです' }
    end
  end
end
