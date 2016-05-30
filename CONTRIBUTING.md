Contributing
======

In an effort to keep readers up-to-date with the greatest tips,
I would love to have more people contribute to this knowledge base.
I originally started this project as a way to give back my knowledge to people within and outside my reach.

The more knowledge we share with one another, the more effective this initiative is!

Here are some tips to get yourself set up locally:

* fork and clone the repository to your machine
* install node on your machine: `brew install node`
* run `npm install`

File Structure
-----

* the `contents/` directory houses the compiled files for the `gh-pages` site.
* modifications on the README.md as well as anything in the `content/` directory will publish.
* NOTE: all new content should be in the `content/` directory

Preview
----

* Once you are done making your changes, you can preview the web version by running: `npm run preview`
  * This command will copy the contents to the `src/`directory and removes the `.md` extentions from the links to allow for correct linking.
* You can view the application on `localhost:9000`
* Live changes will not refresh. Turn off preview mode and run `npm run clear-preview` to remove the contents from the `src/` directory. The content should never get checked into that directory.
* Once you are done, submit a Pull Request with a clear header and an optional description. Tag other contributors for review.

When merging approved PRs:

* Always merge using a Squash commit on the github GUI (make sure the option `Squash and merge` is selected)
* Delete your branch post-merge

Every merge to master will automatically publish to the gh-pages website.
