

# pagina EPUB-Checker

With pagina EPUB Checker you can put your EPUB files through their paces before you send them out for delivery. Just drag and drop the EPUB file(s) onto the checker’s main window and it starts working. Error messages and hints are displayed in clear language and easy to understand.

By the way: You can choose the language.

And: EPUB Checker does not need to be installed, so it also works portably on a USB stick or a computer without administrator rights.

The test mechanisms of the EPUB Checker are based on the official open source EPUBCheck tools (version 4.2.6). pagina EPUB Checker encapsulates this tool and offers you additional features:

    Graphical user interface
    Drag & drop
    Validation of unzipped EPUB files
    These are automatically converted into an EPUB before validation and if they are valid they are also saved as an EPUB file
    Multilingualism (see table)
    
## Package Parameters

The following package parameters can be set:

- `/NOICON` - Do not install a Desktop Icon

To pass parameters, use `--params "''"` (e.g. `choco install packageID [other options] --params="'/ITEM:value /ITEM2:value2 /FLAG_BOOLEAN'"`).
To have choco remember parameters on upgrade, be sure to set `choco feature enable -n=useRememberedArgumentsForUpgrades`.

## Maintainer's Note

I produce and maintain Chocolatey packages in my spare time, for free. If you use my packages, and appreciate the time and effort I put into making and maintaining them, please consider [making a small donation](https://www.buymeacoffee.com/jtcmedia). Thank-you!