# vpw (Vi navigation for pdf files on Windows)
vpw allows users to navigate pdf files using keyboard shortcuts from Vi.
It is an Autohotkey script for emulating Zathura from Linux. 

# Note
- Currently, the pdf viewers supported are Adobe Acrobat, SumatraPDF, and PDF-XChange Editor. However, line 6 can be easily edited to support any other program. Please use the Window Spy feature of Autohotkey to extract an application name.
- The navigations (`j k u d`) emulate mouse wheel scrolls. This means the mouse pointer needs to be on the pdf viewer. It can be easily achieved by the `ctrl + win + space` shortcut. The position of the pointer can be easily changed by modifying lines 10 and 11. `win + space` shortcut for a mouse click can be useful as well.
# List of commands
| Commands | Description |
| --------  | ----------|
| `Esc` | Navigation mode
| `i` | Insert mode
| `j` | Wheel Down 1
| `k` | Wheel Up 1
| `u` | Wheel Up 5
| `d` | Wheel Down 5
| `g` | Home (first page)
| `G` | End x2 (last page)
| `/`, `ctrl + f` | Search (and set insert mode)
| `n` | Navigate to next search result (F3)
| `N` | Navigate to previous search result (shift + F3)
| `J` | Focus left tab (shift + ctrl + Tab)
| `K` | Focus right tab (ctrl + Tab)
| `ctrl + n` | Jumpt to page
| `ctrl + k` | Zoom in
| `ctrl + j` | Zoom out
| `Enter` | Enter (Insert mode), Navigate to next search result (Navigation mode)
