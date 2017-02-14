class ETL

def self.transform(hash)
  new_hash = {}
  hash.each do |key, array|
    array.each do |val|
      new_hash[val.downcase] = key
    end
  end
  new_hash
end

end