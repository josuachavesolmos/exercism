class PhoneNumber

  def self.clean(number)
    # array_raw = number.gsub('+', '').gsub('(', '').gsub(')', '').gsub('-', '').gsub('.', '').gsub(' ', '')
    array_raw = number.tr('+(),-.@:! ', '')
    p "#{array_raw[0]} ---------------------"
    # p "#{array_raw} without special characters"
    array_raw = array_raw.split('').map(&:to_i)
    p 'converting to integer'
    p array_raw
    array_raw = array_raw.drop(1) if array_raw.count == 11 && array_raw[0] == 1
    return nil if array_raw.count == 11 && array_raw[0] != 1 || array_raw.count > 11

    valid_n = (2..9).include?(array_raw[0]) && (2..9).include?(array_raw[3])
    valid_x = [1, 2, 4, 5, 6, 7, 8, 9].map { |position| (0..9).include?(array_raw[position]) }
    valid_n && valid_x.all?(true) ? array_raw.join : nil
  end

end
