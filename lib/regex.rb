class Regex

  def initialize(target)
    @target = target
  end

  def match(matcher)
    begin
      regexp = Regexp.new(matcher)
    rescue RegexpError => e
      raise e, "Invalid pattern: #{e.message}"
    end
    @target.scan(regexp)
  end

end