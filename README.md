# Leodis prototype

This prototype was created in 3 hours during an innovation lab for Leeds City Council.

A live demo can be seen at <https://leodis.herokuapp.com/>.

The purpose is to demonstrate the first part of a modern API-backed Leodis site, focussing on tagging as a simple example.

The metadata was scraped from about 1000 images (#5000-#6000) from the real Leodis site.

## Functionality

### Tag cloud

There is a [tag cloud](https://leodis.herokuapp.com/tags) that shows all tags that have been applied to more than one image, and sizes them relative to their popularity.

### Tag-specific pages

Clicking on a tag, e.g. [kirstall road](https://leodis.herokuapp.com/tags/tag?id=kirkstall+road), shows thumbnails for all the images with that tag.

### Image-specific pages

Clicking on an image, e.g. [Kirkstall Road no. 18](https://leodis.herokuapp.com/images/309) shows that image in an interface similar to the existing Leodis site (... this shows the kind of power that is possible in an extremely short time!) but with prominence given to the tags.

Clicking on any tag will take you to that tag's page, creating an incentive to explore.

### Tag autocomplete

There's a non-functional 'Add...' on each image page where users can type tags they would like to add. Typing in this box autocompletes tags, ordered by how popular they are. For example, typing 'round' autocompletes to 'roundhay road (23)', 'roundabout (8)', etc.

### Machine-readable pages

A key feature of modern web interfaces is an API, which is a machine-readable (and machine-writable) version of the website. This allows for:

* Writing different frontends (e.g. a website and a mobile app) that all interface with the same backend.
* Applications (such as the the [Yarn](http://beta.pararchive.com/) storytelling project) to interface directly with the data without any involvement or effort on the part of the data's owners.
* People to come up with new and novel ways to handle the data. Maybe someone wants to create a history map of Leeds augmented with photos. Maybe someone wants to write a report on how the graininess of photos of Leeds have changed over time, etc. With an API they can write code to handle these use-cases.

For and example of a machine-readable page, try adding `.json` to the end of an image page, for example: <https://leodis.herokuapp.com/images/309.json>.

## The future

If I could handle the real dataset, it would probably not be a giant task to create a useful machine-readable API for the whole dataset, complete with a functional web interface as an example.

The API would focus on the ability to handle tags in the beginning, with the following capabilities:

* Users of the site can add tags themselves
* Librarians can see which tags have been added recently and edit them, delete them or merge them with other tags
* Tags can be used to construct dynamic galleries: for example, someone could ask for a gallery of 'world war one' + 'kirkstall' images.

## Copyright, etc.

The data on the example website belongs to Leeds Library and Information Service, and all rights are reserved by that organisation. See <http://www.leodis.net/> for information.

The source code contained herein is a basic example Rails application and is licensed under an MIT license, with copyright 2015 Fish Percolator Limited.
