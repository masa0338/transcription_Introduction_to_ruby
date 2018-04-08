module Effects

  def self.reverse
    -> (words) {words.split(' ').map(&:reverse).join(' ')}
  end

  def self.echo(count)
    -> (words) do
        words.chars.map {|char| char == ' ' ? char : char * count}.join
    end
  end

  def self.loud(count)
    -> (words) {words.split(' ').map {|word| word.upcase + '!' * count}.join(' ')}
  end

end