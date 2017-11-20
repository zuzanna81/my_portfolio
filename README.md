# Zuzanna's Portfolio
## at CraftAcademy bootcamp week 3

**Assignment**

The challenge is to build a static website using HTML, CSS and Middleman as a framework. An individual portfolio that presents all the past projects and all the projects that you are currently working on.

**Setup  Middleman and create your project**

1. In your terminal create a new Portfolio directory and `cd` into that directory
2. Run `gem install middleman` (make sure you have Ruby installed on your computer)
3. Run `middleman init my_site`(this will create a new folder my_site and generate starter files for the project)
4. Add `gem 'middleman-liverload'` in the Gemfile and run `bundle install`
5. Add `activate :liverload` at the top of the line in the configuration file config.rb
6. `cd my_site` and run `middleman server`(this will install your local server)
7. Access the site at http://localhost:4567/

**Middleman directory structure**

* my_site/
* +-- .gitignore
* +-- Gemfile
* +-- Gemfile.lock
* +-- config.rb
* +-- source
*     +-- images
*         +-- background.png
*         +-- middleman.png
*     +-- index.html.rb
*     +-- javascripts
*         +-- all.js
*     +-- layouts
*         +-- layout.erb
*     +-- stylesheets
*         +-- all.css
*         +-- normalize.css

**Building requirements**

1. Include a Portfolio section
* Create a `data` folder in the root project
 * Add `projects.yml` and add some project information to the file
 * Embed Ruby in the `index.html.haml` in order to display project information
2. Include an About me section
3. Use Partials for the header and the footer (in order to keep the code DRY)
* Create `partials` folder in the source folder
* Create `_footer.html.haml`
* Add partials under = yield command in the main layout file, use `= partial 'partials/footer'`
4. For styling, use CSS framework with Bootstrap library (and preferably SASS)
5. Use HAML as a markup language for HTML (you need to create files that end with .html.haml)
6. Deploy your website on GHPages

**How to deploy a website**

1. Make sure you have node and npm installed on your computer
* In your terminal run `node -v` and `npm -v` to check that
2. Run `npm install --global surge`
3. Check `surge --version`
4. Run `middleman build`
5. Check if the build folder appears within the project root folder
6. Run `surge`
7. Add your e-mail and password
8. Update project path, add `build` at the end of the path
9. Use a random, pre-defined domain or choose your own
10. Check the domain
11. Next time you deploy you start from step 4

**Resources**

CraftAcademy course material (week 3), webpages Bootstrap, Stack Overflow, w3schools
