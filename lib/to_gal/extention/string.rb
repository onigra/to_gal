class String
  def to_gal
    self.gsub(/(\p{hiragana}{2})\1/, '\1②').tr(*ToGal::Dictionary::TR_ARGS)
  end
end
