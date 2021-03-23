# Househunting ergonomics


    results = [...document.querySelectorAll('.mls-js-results-row td:nth-child(8)')]
    console.log(results.map (el) -> el.innerText.trim())

    temp = results.map (el) ->
      status = el.innerText.trim()
      unless (['NEW', 'ACT'].includes status)
        el.parentNode.style.opacity = 0.1

