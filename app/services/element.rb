class Element < ActiveRecord::Base
    # Enumerator
    enum status: ["KOLEKCJA", "FOR SELL", "SOLD", "RESERVATION"]

    enum making: ["PAPIER", "POLIMER", "HYBRYDA"]

    # enum img: {SKAN: 0 , FOTO: 1 , LOC: 2 , WWW: 3 }

end
  