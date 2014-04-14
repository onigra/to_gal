# encoding: UTF-8

module ToGal
  module Dictionary
    BASE = YAML.load_file(File.expand_path("../../../data/dictionary.yml", __FILE__))
    TR_ARGS = BASE.to_a.transpose.map(&:join)
  end
end


