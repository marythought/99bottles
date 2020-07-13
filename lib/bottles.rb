class Bottles
  def verse(num)
    object = num == 1 ? 'it' : 'one'
    action = num.zero? ? 'Go to the store and buy some more' : "Take #{object} down and pass it around"
    "#{num_containers(num).capitalize} of beer on the wall, #{num_containers(num)} of beer.\n#{action}, #{num_containers(num - 1)} of beer on the wall.\n"
  end

  def verses(start, stop)
    (stop..start).map do |v|
      verse(v)
    end.reverse.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def num_containers(num)
    num = num.modulo(100)
    case num
    when 0
      'no more bottles'
    when 1
      '1 bottle'
    when 6
      '1 six-pack'
    else
      "#{num} bottles"
    end
  end
end