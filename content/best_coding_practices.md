Best Coding Practices
--

As you embark into your first career and you begin writing code in your first project, there are three factors that change:
  1) life span
  2) code audience size
  3) definition of success

As a student in college, the timeline of the software you were building was finite (one month, a quarter, a semester).
In addition, the pool of people interfacing with your code was small (teammates and graders).
Your definition of success was, in addition to something cool you can show off to your friends, was an A in the course.
When you graduate, all three of these factors change drastically. Software projects have a far larger timeline.
As a result, not only will your team [which, is probably larger] be interfacing with your code but future developers will too.
Whether the product you are working on is live or if it is an internal project, your definition of success is now to build a stable product.
In order to have more accountability and responsibility in larger features, everything you build needs to be stable.

This section will cover the three key tools in adjusting to this new landscape:

  * The Art of Incremental Development
  * Test Driven Development
  * Source Control

The Art of Incremental Development
-

Now that we have established that you are coding to a greater audience, you will need to tailor yourself to their needs.
It is standard to have teammates review each other's features through pull requests prior to merging them in. Now these other developers will be working on
their own features in addition to reviewing other teammates codes. The hardest pull request to review is one with large file changes.
While waiting untill you are feature complete before you submit your code for review sounds like the obviously right thing to do, there are a few drawbacks to that approach.
First off, you will be behind on changes, some of which may require rework on your own feature.
Second off, as your definition of success is now stability, the smaller your changes are, the easier you can guarantee that you will succeed.
Lastly, reviewing a long PR is hard and is more prone to missing mistakes and issues.

Let's use a simple example to demonstrate this approach. Say, you're working on Facebook for dogs and you need to build a settings modal that allows pups to set their privacy preferences and set their name tag
A good progression of pull requests for this feature would be:

1) Adding the Settings option in the appropriate location and showing two unclickable options (with appropriate tests)
2) Enabling the privacy preferences link and building the form for the options
3) Enabling the submit action and handling the submission (along with the appropriate tests)
4) Enabling the Name Settings option and handling the submission (along with the appropriate tests)

You are getting more rapid feedback as you are building, so if there was a better way of implementing that modal, you know earlier on.
In addition, your intentions are clear per pull request so your audience knows exactly what problem you are trying to solve.
You'll also feel like a rockstar because the faster features are rolling in, the sooner your pups can post their barks in privacy.

A good prerequisite to incremental development is good product management that has organized tasks as so.
Communication of feature developments typically happens on task management tools like JIRA, Pivotal, Github Issues, etc. Feature is ready to be picked up if the related ticket has the following:

- a well defined feature with related screenshots
- *acceptance criteria* - how you know you have succeeded in building a feature.

You may not have a product manager on board providing these things for you. If that is the case, don't just jump right into the feature.
First gather the required information you feel the ticket is missing, apply the exercise above to your feature to figure out a game plan, then go for it!

Test Driven Development
-

Let's get more in to the specifics of development. As your definition of success is building a stable feature, so too is it to not break the other features!
That's why tests exist and a run against each merge! They make sure your change doesn't break anything else.
Writing code in a repository with no tests is truly a nightmare. May you never experience it.
In university, as the life span of code is shorter, the importance of testing may not be covered as well as it should.
That is why writing tests that surround a feature you write is basically giving your feature insurance that it does function properly and will regardless of future changes.

But as the name 'Test Driven Development' implies, you may wonder.. why tests first?
Kevin, VP of Engineering at Originate, clearly explains why in the following [blog post](http://www.originate.com/stories/tdd-is-bs-star-star):

```
It is completely plausible to reflect upfront about what I’m going to build – and to write down these thoughts – before starting to build anything serious, costly, and/or sizeable. Especially when working within a team.

It is similarly intuitive that starting to think about these specifications – or writing them down – after a product has already been built makes very little sense, provides very little benefit to the development process, and is actually more a hassle than useful at that point. Specifications need to be defined, agreed upon, and considered before we build the actual system.
```

If well-written, these specifications can naturally serve as documentation for usage which can prove to be extremely valuable for other engineers.
