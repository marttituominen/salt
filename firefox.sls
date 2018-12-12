firefox:
  pkg.installed

/etc/firefox/syspref.js:
  file.managed:
    - source: salt://firefoxconf/syspref.js
