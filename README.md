# Zuzanna's Portfolio
## at CraftAcademy bootcamp week 3

**Assignment**

The challenge is to build a static website using **HTML**, **CSS** and **Middleman** as a framework. An individual portfolio that presents all the past projects and all the projects that you are currently working on.

**Setup Middleman and create your project**

1. In your terminal run `gem install middleman` (make sure you have Ruby installed on your computer, run `ruby -v` to check current Ruby version)
2. Navigate to the folder where you want your middleman project to be created
* Run `middleman init my_site` (this will create a new folder my_site and generate starter files for the project)
* Run `cd my_site` to navigate to the project, open it in your text editor (`atom .`))
3. In **Gemfile** add `gem 'middleman-livereload'` and run `bundle install`
4. In **config.rb** add `activate :livereload` at the top of the line
5. Run `middleman server`(this will install your local server)
6. Access the site at http://localhost:4567/

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

1. Include a **Portfolio** section
* Create a `data` folder in the root project
* Add **projects.yml** and add some project information to the file
* Display the project information on the **index.html.haml** template
2. Include an **About me** section
3. Use **Partials** for the header and the footer:
* Create `partials` folder in the source folder
* Create `_footer.html.haml`
* Create `_header.html.haml`
* Add partials under = yield command in the main **layout.html.haml** file, use `= partial 'partials/footer'` and `= partial 'partials/header'`
4. For styling, use CSS framework with Bootstrap library (and preferably SASS)
5. Use HAML as a markup language for HTML (you need to create files that end with .html.haml)
6. Deploy your website on GHPages

##How to deploy your website?
**You can use Surge...**

1. Make sure you have node and npm installed on your computer
* In your terminal run `node -v` and `npm -v` to check that
2. Run `npm install --global surge`
3. Check `surge --version`
4. Run `middleman build`
5. Check if the build folder appears within the project's root folder
6. Run `surge`
7. Add your e-mail and password
8. Update project path, add `build` at the end of the path
9. Use a random, pre-defined domain or choose your own
10. Check the domain
11. Next time you deploy you start from step 4

**or GitHub pages...**

1. By that point you should already have a repository on your GitHub account, right? If not, create one named `my_portfolio`
2. In **Gemfile** add `gem 'middleman-deploy', '= 2.0.0.pre.alpha'` and run `bundle install`
3. In **spec/spec_helper.rb** `require 'middleman-deploy'` at the top of the file (skip this if you don't use the file)
4. In **config.rb** add the following code block:
```
activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end
```
5. Create a new file **extensions/build_cleaner.rb** and add the following content to it:
```
class BuildCleaner < Middleman::Extension
  def initialize(app, options_hash = {}, &block)
    super
    FileUtils.rm_rf app.config[:build_dir]
  end
end

::Middleman::Extensions.register(:build_cleaner, BuildCleaner)
```
6. Activate the extension in **config.rb** by adding the following code within the :build block:
```
require 'extensions/build_cleaner'

configure :build do
  activate :relative_assets
  activate :build_cleaner
end
```
7. Run `middleman deploy`
8. Access your website from: https://your-github-username.github.io/my_portfolio

**Resources**

CraftAcademy course material (week 3), webpages Bootstrap, Stack Overflow, w3schools
