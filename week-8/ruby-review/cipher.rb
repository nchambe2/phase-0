def dr_evils_cipher(coded_message)

  coded_letters = coded_message.downcase.split("")
  decoded_sentence = []

  letter_array = ('a'..'z').to_a
  rotated_letter_array = ('a'..'z').to_a.rotate(4)
  rotated_cipher = rotated_letter_array.zip(letter_array)

  coded_letters.each do |coded_letter|
    found_match = false
    rotated_cipher.each do |rotated_letter|
        if coded_letter == rotated_letter[0]
            decoded_sentence << rotated_letter[1]
            found_match = true
            break
        elsif coded_letter == "@" || coded_letter == "#" || coded_letter == "$" || coded_letter == "%"|| coded_letter == "^" || coded_letter == "&"|| coded_letter =="*"
          decoded_sentence << " "
          found_match = true
          break
        elsif (0..9).to_a.include?(coded_letter)
          decoded_sentence << coded_letter
          found_match = true
          break
        end
    end

    decoded_sentence << coded_letter unless found_match

  end
  decoded_sentence = decoded_sentence.join("")

end

# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!"

p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l") == "our early attempts at a tractor beam went through several preparations. preparations a through g were a complete failure.\n but now, ladies and gentlemen, we finally have a working tractor beam, which we shall call preparation h"

p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.") == "you see, i've turned the moon into what i like to call a death star."

p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.") == "mini me, if i ever lost you i don't know what i would do.\n i'd probably move on and get another clone but there would be a 15 minute period there where i would just be inconsolable."

p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?") == "why make a trillion when we could make... billions?"

