NBGallery and NBImageGallery
============================

NBGallery: an enhanced UIScrollView with utility methods for paging.

NBImageGallery: a simple horizontally-scrolling photo gallery.

Demo
====

The demo/ folder contains a demo project showing NBImageGallery in use.
Open and run it.

Usage
=====

NBPhotoGallery: just set gallery.images to an array of your UIImages.

NBGallery: subclass it and add your own content to display in the
gallery. Use gallery.displayedIndex to get or set which item is shown,
and the delegate methods to detect interaction.

Compatibility
=============

This class has been tested back to iOS 6.1.

Implementation
==============

This class is implemented using the pagingEnabled feature of
UIScrollView, and adding its own delegate for easier detection of
certain conditions.

License
=======

This code is released under the MIT License. See the LICENSE file for
details.