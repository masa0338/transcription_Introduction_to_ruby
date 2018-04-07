require '../lib/regex'

printf 'Text?:'
regex = Regex.new(gets.chomp)
begin
  printf 'Pattern?:'
  result = regex.match(gets.chomp)
  unless result.empty?
    puts "Matched: #{result.join(', ')}"
  else
    puts 'Nothing matched.'
  end
rescue RegexpError => e
  puts e.message
  retry
end
