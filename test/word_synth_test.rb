require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynthTest < Minitest::Test

  def setup
    @synth = WordSynth.new
  end

  def test_play
    assert_equal 'Ruby is fun!', @synth.play('Ruby is fun!')
  end

  def test_reverse_play
    @synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', @synth.play('Ruby is fun!')
  end

  def test_echo_play
    @synth.add_effect(Effects.echo(2))
    assert_equal 'RRuubbyy iiss ffuunn!!', @synth.play('Ruby is fun!')
  end

  def test_loud_play
    @synth.add_effect(Effects.loud(3))
    assert_equal 'RUBY!!! IS!!! FUN!!!!', @synth.play('Ruby is fun!')
  end

  def test_mix_play
    @synth.add_effect(Effects.echo(2))
    @synth.add_effect(Effects.loud(3))
    @synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', @synth.play('Ruby is fun!')

  end

end
