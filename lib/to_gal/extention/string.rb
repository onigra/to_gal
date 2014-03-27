class String
  def to_gal
    dic = {
      'あ' => 'ぁ',
      'い' => 'ぃ',
      'う' => 'ぅ',
      'え' => 'ぇ',
      'お' => 'ぉ',
      'や' => 'ゃ',
      'ゆ' => 'ゅ',
      'よ' => 'ょ',
      'わ' => 'ゎ',
      'つ' => 'っ',
      'は' => 'ゎ',
      '。' => 'o'
    }

    dic.each do |before, after|
      self.gsub!(/#{before}/, after)
    end

    self
  end
end
