# Househunting ergonomics


Hide listings that aren't new or active.

    results = [...document.querySelectorAll('.mls-js-results-row td:nth-child(8)')]
    console.log(results.map (el) -> el.innerText.trim())

    temp = results.map (el) ->
      status = el.innerText.trim()
      unless (['NEW', 'ACT'].includes status)
        el.parentNode.style.opacity = 0.1

Make it easy to grab the address+MLS#

    el = document.querySelector('#PrimaryInfo > div')
    primaryInfo = el.innerText.split('\n')
    addressAndID = primaryInfo[0] + primaryInfo[14]
    # data = [new ClipboardItem({ "text/plain": new Blob([...addressAndID]) })];
    console.log addressAndID
    el.onclick = ->
      console.log addressAndID
      blob = new Blob [addressAndID], type: 'text/plain'
      data = [new ClipboardItem({ 'text/plain': blob })]
      navigator.clipboard.write(data).then ->
        console.log ' copied to clipboard'


Acreage

    [...document.querySelectorAll 'span.pl-1'].forEach (el) ->
      if el.innerText.includes 'SqFt' or
         el.innerText == 'Tax'
        el.parentNode.style.color = 'green'

MLS Pin auto-boots after 20 minutes or so. This is pointless. It's not a secure system.

Sign me right back in.

    if window.location.pathname.match /^\/clients\/signin/
      window.location = "https://vow.mlspin.com/?#{window.localStorage.MLS_CREDS}"

