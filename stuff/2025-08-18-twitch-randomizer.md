---
date: "2025-08-18"
slug: stuff/twitch-randomizer
---
# twitch channel randomizer

_post date: august 18, 2025_

<center><img src="/images/stuff/navbar.webp" width="500"></center>

&nbsp;

my project last week/end was to add more gambling to twitch in the form of a randomizer button! This is a [tampermonkey](https://chromewebstore.google.com/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo) script that adds a button on the nav bar up top to send you to a random page, based on the filters you set. Discoverability for smaller streamers is pretty bad on twitch, so I took it upon myself to create a new way to check out smaller creators. The button does a really good job of channeling your sense of "surely the next streamer can't also be terrible!"

<center><img src="/images/stuff/filtermenu.webp" width="612"></center>

&nbsp;

here are what the filters do (and the ones I have set as of right now):
- **Language = en**
    - only selects english streamers
- **Auto-roll time = 20s**
    - when auto-roll mode is toggled on, this sets the amount of time it will stay on the page before initiating another roll
- **Bucket mode: on, Min = 2, Max = 19, Count = 4**
    - bucket mode is the default search mode and is designed to make the rolls more random. You set a desired min and max viewer count, and how many "buckets" you want. Increasing the amount of buckets will make your rolls have more varied viewer counts within your range, but will increase the time it takes to find a new channel. Decreasing will do the opposite; you'll have a faster searching experience, but the viewercounts will not be as random
    - when bucket mode is off, the only filters are min and max viewers. Because of how the twitch api works, your rolls are going to be pretty biased towards the maximum value, so ideally you should set a pretty tight range if you're using this mode
    - the "Explicit buckets" setting allows you to manually set your viewercount bucket ranges if you want, like in the example, it shows setting a bucket of 2 to 11 viewers, 12 to 21 viewers, and so on
- **Excluded tags = furry**
    - allows you to filter out streams based on the tags the streamer has set up for themselves
    - *I didn't think I needed this feature until I got flashbanged a few times by some freaky ahh streamers* :slightly_smiling_face:
- **Category list mode: Exclude**
    - there are two ways to filter out streams based on the game, exclude mode and include mode. Include mode allows you to set specific games, and only search within those categories. Exclude mode does the opposite, and works as a blocklist for games
    - the "add current" button allows you to add to that list based on the streamer you are currently watching
    - you can also manually add to the list by pasting in the link for that category (https://www.twitch.tv/directory/category/grand-theft-auto-v) or just typing in the slug (grand-theft-auto-v)

there's also an import and export feature for saving & sharing your filters.

## video demo

<center><iframe width="560" height="315" src="https://www.youtube.com/embed/m0KVJWfpMOQ?si=_f9TdLXcfEPOZ8x_" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen style="max-width: 600px; width: 100%; height: auto; aspect-ratio: 16/9;"></iframe></center>

&nbsp;


## setup guide

- **Step 1:** make sure you have [tampermonkey](https://chromewebstore.google.com/detail/tampermonkey/dhdgffkkebhmkfjojejmpbldmpobfkfo) installed
- **Step 2:** click [this link](https://gist.github.com/Broccoccoccoli/c4b2a4e2702be1a936daceb2ea08cf42/raw/4a659d263fa5a611bca4702aa39fdd085da6f99f/twitch-randomizer.user.js) to install the script to tampermonkey (the link will only work if you already have the tampermonkey extension installed)
- **Step 3:** head to https://dev.twitch.tv/ and login
- **Step 4:** head to the "applications" page on the left, and click the purple "register your application" button on the right
- **Step 5:** fill out everything above "client ID" as shown

<center><img src="/images/stuff/twitchsetup.webp" width="500"></center>

- **Step 6:** copypaste your client ID and client secret somewhere temporarily (you may have to click "new secret" to generate a new client secret)
- **Step 7:** head to your tampermonkey dashboard, open up the script with the edit button and paste those values into the variables at lines 97 and 98

<center><img src="/images/stuff/install.webp" width="500"></center>

- **Step 7.1:**
  - line 97 should look like: const CLIENT_ID = 'asdf1234yourclientidhere'
  - line 98 should look like: const CLIENT_SECRET = 'yourclientsecrethere1234asdf'
- **Step 8:** save with ctrl + s, and head to https://twitch.tv to start rolling! (if you already have a twitch tab open, you have to refresh twitch to enable the script for the first time)

## notes

- let the record state that I'm not a professional web dev and I did this 4fun, so your mileage may vary
- rolling can take pretty long depending on your filters, but there's a built-in search timeout at 60 seconds
  - after the first few rolls it should speed up a bit, unless you have a high bucket count (I keep mine between 2-4 for faster rolling)
- I have twitch turbo atm, so the concept might not even work well if you have to watch an ad every roll (if you still want to try it, you can increase the auto roll timer to account for this)
- if you really want to use the script and the setup steps aren't working, just dm me and I can probably help troubleshoot it
- if you're an actual web dev and you look through the script, your suspicions are in fact correct, this was like 80% vibe coded using modern day wizardry

