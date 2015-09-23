# Leodis hack

This is a simple hack to demonstrate the power of tags in the Leodis image archive.

It was created in 3 hours during a hackday for Leeds City Council.

## Setup

### Using Docker Compose

```
docker-compose build
docker-compose run web bundle
docker-compose run web db:migrate
docker-compose up
```

### Preseed

You can prepopulate the DB using the Leodis scraper. Edit the file `lib/tasks/leodis.rake` and set the range to the range of images you want to import. By default it uses images 5000..6000 which include a lot of images of the Headrow.

### Functionality

* Tag cloud on the homepage showing all tags with 2+ images
* Tag pages with list of images holding that tag (and thumbnails)
* List of tags on each image's page, linked to tag page
* Autocomplete on image page for "add tag", ordered by tag popularity (currently non-functional)
