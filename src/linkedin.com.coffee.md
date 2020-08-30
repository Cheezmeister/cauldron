# More ergonomic `setTimeout()`

    delay = (millis, fn) -> window.setTimeout(fn, millis)

# Hide notifications I don't care about

    document.onreadystatechange = delay 2000, ->
      console.log "Document is #{document.readyState}"
      document.querySelectorAll('article.nt-card').forEach (notification) ->
        console.log "testing #{notification.id}"
        text = notification.querySelector('strong')?.textContent
        if /shared a( public)? post/.test text
          notification.classList.add 'hidden'
