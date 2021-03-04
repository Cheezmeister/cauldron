# Hide Retweets on demand

Because I don't _never_ want to see retweets.

But I also _often_ want to see what @PERSON actually has to say and not an endless stream of things @OTHER_PERSON said.

So, when I press `r`,

    document.onkeydown = (evnt) =>
      return unless evnt.key == 'r'

Grok the DOM for `spans` with this funky data attribute that will probably break next week
because that is the least-bad way to identify the little "Human Person Retweeted" indicator
as far as I know because twitter.com's markup is an absolute dumpster fire with what I assume
are intentionally-obfuscated class names like 
`css-901oao css-16my406 css-cens5h r-m0bqgq r-poiln3 r-n6v787 r-b88u0q r-1sf4r6n r-bcqeeo r-qvutc`
to prevent schmucks like me from trying to use the platform in a meaningful fashion.

Then get the element's great-great-great...*very* great fucking grandparent, yeah the actual tweet, and hide that.

      things = [ ...document.querySelectorAll('span[data-testid="socialContext"]') ]
      things.map (el) ->
        return unless el.innerHTML.match /Retweeted/
        probablyRetweet = el.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode
        probablyRetweet.style.display = 'none'

I wish I were joking.
