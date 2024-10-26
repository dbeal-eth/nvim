# db's neovim configuration

When I first started using neovim I used this wonderful [colemak preset]() by @theniceboy, and I really like the keybindings and plugin choices he used for his configuration. Many of those ideas have been brought into this repo while removing some of the other parts of the configuration that I never got into using.

Overall, I'm going for a lightweight IDE

## Usage

Of course, you should have `neovim` installed on your machine. You will also want to have a variety of other programs for ex. file search, syntax understanding, test running, . Below is a non-exhaustive list of commands which you may want to have installed on your setup. The installation for these varies based on your computer:

```
rg
fd

# if you use nodejs
node
npm
vtsls # typescript/javascript language parser
prettier # auto prettification of projects to configuration (reccomended global installation)


```

... and yes, I am aware that there is a plugin for nvim that installs these automatically. I choose not to use it for right now.

Then, checkout this repo into your nvim configuration directory location. For example, on linux:

```bash
git clone https://github.com/dbeal-eth/nvim ~/.config/nvim
```

If you don't use [colemak](https://colemak.com/) keyboard layout like me, you should turn off the colemak key bindings by modifying the `init.lua` file:

```lua
-- find this line
require("config.colemak")

-- and comment it out (or remove)!
-- require("config.colemak")

```
