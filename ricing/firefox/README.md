In Firefox, it's possible to customise your look and feel via css file.

# How To Enable

- Open Firefox and type `about:support`
- Go to Profile Directory and open it, it should be inside `~/.mozilla/firefox` with a random folder name
- Create a folder called `chrome`
- Create `userChrome.css` in the `chrome` folder, or alternatively copy paste the sample from this repo
- Go to Firefox and type `about:config` in the URL bar and set `toolkit.legacyUserProfileCustomizations.stylesheets` value to `true`
- Restart Firefox

# How to find elements
- Bring up the inspector, `right click` -> `inspect element` on any page
- Go to `settings`, it maybe hidden behind the triple dots menu
- Enable `remote debugging` and `chrome debugging toolboxes`, which is the last 2 option
- Close the inspector, and go to the `main menu` --> `web developer` --> `browser toolbox`
- There'll be a pop up asking for permission, authorise the access
- Now you can inspect the firefox window itself rather than just the web page

# Tree Style Tabs
If you install this Firefox Add Ons, you can rice it further with the supplied treestyletab.css.
- Go to `about:addons`
- Go to Tree Style Tabs menu
- Under preferences, there's a section where you can copy paste CSS rules
