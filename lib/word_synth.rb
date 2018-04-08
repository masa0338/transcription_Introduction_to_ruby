class WordSynth

  def initialize
    @proc_list = []
  end

  def play(word)
    @proc_list.inject(word) {|word, proc| proc.call(word)}
  end

  def add_effect(effect)
    @proc_list << effect
  end

end