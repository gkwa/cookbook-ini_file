def hash_to_ini(hash, lines = [])
  hash.each do |name, value|
    unless value.is_a? Hash
      lines << "#{name} = #{value}"
    else
      lines << "[#{name}]"
      lines = hash_to_ini(value, lines)
    end
  end
  return lines
end
