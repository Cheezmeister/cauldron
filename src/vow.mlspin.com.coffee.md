# Househunting ergonomics


Hide listings that aren't new or active.

    results = [...document.querySelectorAll('.mls-js-results-row td:nth-child(8)')]
    console.log(results.map (el) -> el.innerText.trim())

    temp = results.map (el) ->
      status = el.innerText.trim()
      unless (['NEW', 'ACT'].includes status)
        el.parentNode.style.opacity = 0.1

MLS Pin auto-boots after 20 minutes or so. This is pointless. It's not a secure system.

Sign me right back in.

    if window.location.pathname.match /^\/clients\/signin/
      window.location = "https://vow.mlspin.com/?#{window.localStorage.MLS_CREDS}"

