document.onreadystatechange = delay 2000, ->
  console.log "Document is #{document.readyState}"
  document.querySelectorAll('.community-bulletin, .everyonelovesstackoverflow, #hot-network-questions').
    foreach el ->
      el.classList.add 'hidden'
      console.log "hid #{el}"
document.onreadystatechange()
