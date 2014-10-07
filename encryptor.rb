class Encryptor
  #first lets build the hash to use as a look up table for our encryption
  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
  end

  def encrypt(letter)
    letter.split("").collect do |e|
       cipher[e.downcase]
    end
  end

  def decrypt(letter)
      letter.split("").collect do |d|
        cipher[d.downcase]
      end
  end

  def cipher_new(rot)
    ch = (' '..'z').to_a
    rotated_ch = ch.rotate(rot)
    Hash[ch.zip(rotated_ch)]
  end
  def encrypt_decrypt_all(letter,rotation)
    #this code replaces cipher and encrypt
      cip = cipher_new(rotation)
      arr = []
      letter.split("").collect! do |l|
        cip[l]
      end

  end
end
