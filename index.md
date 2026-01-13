---
title: broccosite
---

<style>
  /* turn off auto external-link icon */
  a[data-linkicon="external"]::after { content: none; }

  /* remove bullet points */
  .lt-stack ul, .lt-stack ol { list-style: none; margin: 0; padding: 0; }
  .lt-stack li { margin: 0; }
  .lt-stack li > p { margin: 0; }
  .lt-stack > ul > li + li { 
    margin-top: var(--btn-gap) !important; 
  }

  /* button formatting */
  .lt-stack a.lt-card,
  .lt-stack a.lt-card:link,
  .lt-stack a.lt-card:visited {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    text-decoration: none;          
    background: #fff;
    border: 1px solid #d1d5db;
    border-radius: 9999px;
    padding: 12px 16px;
    box-shadow: 0 1px 2px rgba(0,0,0,0.06), 0 1px 1px rgba(0,0,0,0.04);
    color: #1f2937;
    font-size: 1.4rem;
    font-family: "Quicksand", sans-serif;
    font-variation-settings: normal;
    font-weight: 500;
    transition: transform .1s ease, box-shadow .15s ease, border-color .12s ease, background-color .12s ease;
  }
  .lt-stack a.lt-card:hover {
    transform: translateY(-2px);
    border-color: #9ca3af;
    background-color: #f9fafb;
    text-decoration: none;
  }

  /* add icon */
  .lt-stack a.lt-card::before {
    content: "";
    width: 24px;
    height: 24px;
    border-radius: 6px;
    display: inline-block;
    background-size: cover;
    background-position: center;
  }

  /* per-platform icons */
  .ico-brocco::before { background-image: url('/images/broccoflush.png'); } /* placeholder icon */
  .ico-twitter::before { background-image: url('/images/icons/twitter.png'); }
  .ico-youtube::before { background-image: url('/images/icons/youtube.png'); }
  .ico-twitch::before  { background-image: url('/images/icons/twitch.png'); }
  .ico-steam::before   { background-image: url('/images/icons/steam.png'); }
  .ico-spotify::before { background-image: url('/images/icons/spotify.png'); }
  .ico-riot::before     { background-image: url('/images/icons/riot.png'); }
  .ico-osu::before     { background-image: url('/images/icons/osu.png'); }
  .ico-apex::before    { background-image: url('/images/icons/apex.png'); }
  
  /* center header image */
  .img-center img { display: block; margin-left: auto; margin-right: auto; }

    /* background panel */
  .lt-panel{
    max-width: 580px;
    margin: 1.5rem auto;
    padding: 24px 28px;
    background: #d1fae5;
    border: 1px solid #e5e7eb;
    border-radius: 20px;
    box-shadow: 0 6px 20px rgba(0,0,0,.06);
  }

  /* button spacing */
  .lt-panel .lt-stack{
    --btn-gap: 18px;             
    max-width: 520px;
    margin: 0.75rem auto;         
    padding: 0 4px;
  }

  .inactive-section h3 { text-align: center; margin: 1rem 0; }

</style>

hi, I'm [[about|Broccoli]]

welcome to my personal site 🥦 

here’s some links to my stuff:

---

::: {.img-center}
<img src="/images/broccoflush.png">
:::

::: {.lt-panel}
  ::: {.lt-stack}
  - [twitter](https://twitter.com/Broccoccoccoli){.lt-card .ico-twitter target="_blank" rel="noopener"}
  - [youtube](https://youtube.com/@Broccoccoccoli){.lt-card .ico-youtube target="_blank" rel="noopener"}
  - [steam](https://steamcommunity.com/id/Broccoccoli/){.lt-card .ico-steam target="_blank" rel="noopener"}
  - [apex](https://apexlegendsstatus.com/profile/uid/PC/2654494079){.lt-card .ico-apex target="_blank" rel="noopener"}
  - [spotify](https://open.spotify.com/user/broccoli_?si=6bd23e31398b4929&nd=1){.lt-card .ico-spotify target="_blank" rel="noopener"}
  :::
:::

&nbsp;

::: {.inactive-section}
### inactive
:::

::: {.lt-panel}
  ::: {.lt-stack}
  - [twitch](https://twitch.tv/broccoligg){.lt-card .ico-twitch target="_blank" rel="noopener"}
  - [tft](https://lolchess.gg/profile/na/Broccoli-veg/){.lt-card .ico-riot target="_blank" rel="noopener"}
  - [osu!](https://osu.ppy.sh/users/5870537){.lt-card .ico-osu target="_blank" rel="noopener"}
  :::
:::