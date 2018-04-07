module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
      when Array then
        freezed = array_or_hash.map(&:freeze)
      when Hash then
        freezed = array_or_hash.each do |key, val|
          key.freeze
          val.freeze
        end
    end
    freezed.freeze
  end
end