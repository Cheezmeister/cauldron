# ADP Workforce Now

## Bind Super-Backslash keypress to click the "Save" button.

For timecard entry.

This allows us to check as we go what will actually be submitted, without having to reach for the mouse.

    document.addEventListener 'keydown', (e) ->
      if e.key == '\\'
        if e.metaKey
          document.querySelector('#btnSubmit')?.click()


