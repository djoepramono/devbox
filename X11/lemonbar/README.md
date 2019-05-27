# Installation

You can compile from the source, but for me I got it from `apt`

```
sudo apt install lemonbar
```

# Configuration

Lemonbar itself is pretty straightforward. Pipe an output to lemonbar and it will be displayed on the bar.

Use `-p` to make the bar permanent
Use `&` to make it run in the background`

```
echo "foo" | lemonbar -p
```

However getting it work with bspwm was a bit of a headache. At one point it simply doesn't work but with then it will work.

If in doubt just run it with `exec` and pipe the output to a file to analyze
