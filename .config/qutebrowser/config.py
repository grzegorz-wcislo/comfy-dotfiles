import subprocess
def read_xresources(prefix):
    props = {}
    x = subprocess.run(['xrdb', '-query'], stdout=subprocess.PIPE)
    lines = x.stdout.decode().split('\n')
    for line in filter(lambda l : l.startswith(prefix), lines):
        prop, _, value = line.partition(':\t')
        props[prop] = value
    return props

xresources = read_xresources('*')
foreground = xresources['*foreground']
background = xresources['*background']
background_alt = xresources['*color8']

red = xresources['*color1']
green = xresources['*color2']
yellow = xresources['*color3']
blue = xresources['*color4']
magenta = xresources['*color5']
cyan = xresources['*color6']


c.colors.completion.category.bg = cyan
c.colors.completion.category.border.bottom = c.colors.completion.category.bg
c.colors.completion.category.border.top = c.colors.completion.category.bg
c.colors.completion.category.fg = background
c.colors.completion.even.bg = background
c.colors.completion.fg = foreground
c.colors.completion.item.selected.bg = c.colors.completion.category.bg
c.colors.completion.item.selected.border.bottom = c.colors.completion.item.selected.bg
c.colors.completion.item.selected.border.top = c.colors.completion.item.selected.bg
c.colors.completion.item.selected.fg = background_alt
c.colors.completion.match.fg = red
c.colors.completion.odd.bg = c.colors.completion.even.bg
c.colors.completion.scrollbar.bg = background
c.colors.completion.scrollbar.fg = c.colors.completion.category.bg 

c.colors.downloads.bar.bg = background
c.colors.downloads.error.bg = red
c.colors.downloads.error.fg = background
c.colors.downloads.start.bg = blue
c.colors.downloads.start.fg = background
c.colors.downloads.stop.bg = green
c.colors.downloads.stop.fg = background

c.colors.hints.bg = background_alt
c.colors.hints.fg = foreground
c.colors.hints.match.fg = background_alt

c.colors.keyhint.bg = background
c.colors.keyhint.fg = foreground
c.colors.keyhint.suffix.fg = green

c.colors.messages.error.bg = red
c.colors.messages.error.border = c.colors.messages.error.bg
c.colors.messages.error.fg = foreground
c.colors.messages.info.bg = background
c.colors.messages.info.border = c.colors.messages.info.bg
c.colors.messages.info.fg = foreground
c.colors.messages.warning.bg = yellow
c.colors.messages.warning.border = c.colors.messages.warning.bg
c.colors.messages.warning.fg = foreground

c.colors.prompts.bg = background
c.colors.prompts.border = '0 solid black'
c.colors.prompts.fg = foreground

c.colors.statusbar.caret.bg = magenta
c.colors.statusbar.caret.fg = background
c.colors.statusbar.caret.selection.bg = magenta
c.colors.statusbar.caret.selection.fg = background
c.colors.statusbar.command.bg = background
c.colors.statusbar.command.fg = foreground
c.colors.statusbar.insert.bg = green
c.colors.statusbar.insert.fg = background
c.colors.statusbar.normal.bg = background
c.colors.statusbar.normal.fg = foreground
c.colors.statusbar.progress.bg = foreground
c.colors.statusbar.url.error.fg = red
c.colors.statusbar.url.fg = foreground
c.colors.statusbar.url.hover.fg = blue
c.colors.statusbar.url.success.http.fg = cyan
c.colors.statusbar.url.success.https.fg = green
c.colors.statusbar.url.warn.fg = yellow

c.colors.tabs.bar.bg = background
c.colors.tabs.even.bg = background_alt
c.colors.tabs.even.fg = foreground
c.colors.tabs.indicator.error = red
c.colors.tabs.indicator.start = blue
c.colors.tabs.indicator.stop = green
c.colors.tabs.odd.bg = c.colors.tabs.even.bg
c.colors.tabs.odd.fg = c.colors.tabs.even.fg
c.colors.tabs.selected.even.bg = background
c.colors.tabs.selected.even.fg = foreground
c.colors.tabs.selected.odd.bg = c.colors.tabs.selected.even.bg
c.colors.tabs.selected.odd.fg = c.colors.tabs.selected.even.fg

c.completion.height = '30%'
c.completion.scrollbar.padding = 0
c.completion.scrollbar.width = 5

c.content.default_encoding = 'utf-8'

c.fonts.monospace = '"GohuFont"'

c.hints.border = '1 solid ' + c.colors.hints.bg

c.spellcheck.languages = [ 'pl-PL', 'en-US' ]

c.statusbar.padding = {'top': 5, 'bottom': 5, 'left': 5, 'right': 5}
c.statusbar.position = 'top'

c.tabs.background = True
c.tabs.favicons.scale = 1.5
c.tabs.indicator.width = 5
c.tabs.padding = {'top': 5, 'bottom': 5, 'left': 5, 'right': 5}
c.tabs.select_on_remove = 'last-used'
c.tabs.title.format = '{title}'

c.url.searchengines = {
    'DEFAULT':  'https://duckduckgo.com/?q={}',
    'yt':       'https://youtube.com/results?search_query={}',
    'aw':       'https://wiki.archlinux.org/?search={}',
    'r':        'https://reddit.com/r/{}',
    'tpb':      'https://thepiratebay.org/search/{}',
    'wa':       'https://www.wolframalpha.com/input/?i={}',
}

