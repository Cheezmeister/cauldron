# Cheezmeister's Cauldron


I don't know if this will work but we can try.

    window.BML = {}
    window.BML.say_it_works = -> alert 'it works'
    window.BML.after = (millis, fn) ->
      setTimeout fn, millis
