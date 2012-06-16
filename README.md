Spree Product Sort
==================

Simple - and shamefully untested - extension to sort products within taxons and also on a global index. 

It works by creating a new DB join table between products and taxons to store the product positions for each taxon, and adding an admin view that lets you drag-and-drop them into place.

This extension includes an assumption that you will want a global index (i.e. a /products page that lists all products) that is sorted independently from each taxon. The solution for this seems a little hacky: It does it by creating a fictitious taxon to which all existing and new products are added. Suggestions for improvement are welcome.

Based on: [https://github.com/jdevine/spree-ordering-in-taxons](https://github.com/jdevine/spree-ordering-in-taxons)
