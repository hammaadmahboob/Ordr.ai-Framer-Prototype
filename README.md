# Ordr.ai framer prototype
Here's the code for the prototype I use in my article [Building The Universal Menu of Tomorrow](https://uxplanet.org/building-the-universal-menu-of-tomorrow-4c2f06635197)

![Alt Text](https://cdn-images-1.medium.com/max/1600/1*310aZWsLDnifYGKBB1_S_Q.gif)

## Notes:

* Should have made classes... 

* One of the more obvious things is that I have essentially layered everything on top of each other instead of creating separate pages for each section of the prototype. If I remember correctly, the main reason I did that was because Framer.js utelized fixed directions of either left or right for page transitions and I wanted a seamless transition between the Main Page & Power Search pages. (As you can see, it soon became a nightmare to trigger and control the correct asset arrangements to stop the wrong pages/interactions from being viewed!)

* All the parallax would defintiely benefit from a more planned approach by using some simple maths and monitoring the change in scroll position & actually formatting each Meal Card’s background image/overlay to be the same size & relative position.

* There was also some weirdness involved in trying to get the Meal Cards to swipe, while scrolling and be a tap target that can return to it’s original view, without getting stuck at the point where you tapped or dragged it… Actually, the first card still temporarily disappears or scrolls at a different rate. I think it has to do with the fact that when you tap or slightly move it & move the screen at the same time, the return to origin animation begins but doesn’t scroll with everything else.

