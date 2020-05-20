# banner.rb

#### `$ ruby banner.rb -sr 'banner.rb'`
```
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
           b a n n e r . r b
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
```

#### `$ ruby banner.rb -ss 'YOU CAN DO IT'`
```
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
       Y O U   C A N   D O   I T
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
```

#### `$ ruby banner.rb -help`

```
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
Utility to pretty-print banner messages.
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~

$ ruby banner.rb -h/-help

> Display this help menu and exit
> Use a flag to set horizontal rule
> Use single-quotes to wrap input

$ ruby banner.rb -b 'BARS'
========================================

$ ruby banner.rb -db 'DOUBLE BARS'
========================================
========================================

$ ruby banner.rb -d 'DOTS'
::::::::::::::::::::::::::::::::::::::::

$ ruby banner.rb -dd 'DOUBLE DOTS'
::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::

$ ruby banner.rb -sr 'SQUIGGLES-RIGHT'
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~

$ ruby banner.rb -sl 'SQUIGGLES-LEFT'
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~

$ ruby banner.rb -ss 'SUPER-SQUIGGLES'
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~

Found a bug? Let me know!
https://github.com/ajtran303/banner/issues

```

## What is a horizontal rule?

#### `$ ruby util/horizontal_ruler_demo.rb`


```
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
 H O R I Z O N T A L _ R U L E R . R B
~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~
 ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~ ~*~

A Ruby program to easily pretty print
horizontal rules to the Command Line.

::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::

A horizontal rule is a line that
separates content above and below it.

Horizontal rules are used to visually
denote thematic breaks and transitions.

========================================

Check out the demo file to see it work!
```
