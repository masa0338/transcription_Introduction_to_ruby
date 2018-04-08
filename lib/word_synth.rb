class WordSynth

  def initialize
    @effects = []
  end

  def play(words)
    @effects.inject(words) {|words, effect| effect.call(words)}
  end

  def add_effect(effect)
    @effects << effect
  end

end