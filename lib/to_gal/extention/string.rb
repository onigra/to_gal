class String
  def to_gal
    self.tr(*ToGal::Dictionary::TR_ARGS)
  end
end
