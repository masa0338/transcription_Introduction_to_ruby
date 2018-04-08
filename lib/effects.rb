class Effects

  def self.reverse
    Proc.new {|words| words.split(' ').map(&:reverse!).join(' ')}
  end

  def self.echo(count)
    Proc.new do |words|
      words.split(' ').map do |word|
        word.chars.map {|char| char * count}.join
      end.join(' ')
    end
  end

  def self.loud(count)
    Proc.new {|words| words.split(' ').map {|word| word.upcase! + '!' * count}.join(' ')}
  end

end