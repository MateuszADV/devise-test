class NoteEnum < ApplicationRecord
    # Enumerator
    enum 
      status: ["KOLEKCJA", "FOR SELL", "SOLD", "RESERVATION"]
    end
    enum 
      making: {PAPIER: 0, POLIMER: 1, HYBRYDA: 2}
    end
    enum 
      img: {SKAN: 0 , FOTO: 1 , LOC: 2 , WWW: 3 }
    end
end
  