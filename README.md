# ENConvertURL
Automatically converts Evernote public URLs to internal evernote:/// format

original forum thread from 4/9/2014: https://discussion.evernote.com/forums/topic/56288-released-utility-to-auto-fix-right-click-copy-note-link-urls-back-to-evernote-format/

# Summary
In recent versions (anything >5.2.x) the default behavior on the Windows EN client when you right-click a note and choose "Copy Note Link" has changed. You used to get an "evernote:///" URL which as long as EN was properly installed and registered its protocol handler, would automatically open such links within the EN application. The new version instead gives you "Web" URLs (https://www.evernote.com/.....) which while they appear to work the same when clicked from the Windows client, on the MAC client they will cause Safari to open instead which really bugged me.

So I wrote a small utility to auto-convert these Evernote Web URLs to the "old" evernote:/// format (in case it's useful to anyone). It sits quietly in your tray and only performs this one single function - automatically. You can grab it below:

# How to Use
1. download it (for Windows only): [ENConvertURL](https://github.com/luckman212/ENConvertURL/blob/main/ENConvertURL.exe?raw=true)
2. unzip the .exe file anywhere you like
3. double click to run it - a settings file will be created in whatever folder you ran the app from.
4. now, whenever you use Right Click > Copy Note URL it will automatically convert the link into a local evernote:/// format one.
5. by default, you'll hear a short 'beep' to confirm that the script is working (you can disable that via the tray menu if it bothers you)
6. if you'd like it to run automatically whenever you log in, place a shortcut to it in your Startup folder (Start > Run > type "shell:startup" and hit enter)

Enjoy 🙂 if you have any problems with it please post them.
