# Config

Visit the [github page](https://github.com/jwilm/alacritty/blob/master/alacritty.yml) and there's a sample `alacritty.yml` there

It's pretty long config, but you can just pick and set what you want to configure and the rest will use default

# Font

Alacritty used font variant to draw bold text. So make sure that your font has bold variant. 
For example installing Inconsolata by default, doesn't have the bold variant e.g. Inconsolata with `style=Bold`

To check your font variants, you can run the following

```
→ fc-list | grep -i ubuntumono
/usr/share/fonts/truetype/ubuntu/UbuntuMono-RI.ttf: Ubuntu Mono:style=Italic
/usr/share/fonts/truetype/ubuntu/UbuntuMono-B.ttf: Ubuntu Mono:style=Bold
/usr/share/fonts/truetype/ubuntu/UbuntuMono-BI.ttf: Ubuntu Mono:style=Bold Italic
/usr/share/fonts/truetype/ubuntu/UbuntuMono-R.ttf: Ubuntu Mono:style=Regular
```

# Opacity

By default it has `background_opacity` of 0.8 and if intend to do a bright background, it may interfere with it.
For example the background might grey out a bit.

It's preferrable to do the opacity via compton instead
