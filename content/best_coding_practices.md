Best Coding Practices
--

As you embark into your first career and you begin writing code in your first project, there are three factors that change:
  1) life span
  2) code audience size
  3) definition of success

As a student, the timeline of the software you were building was finite (one month, a quarter, a semester).
In addition, the pool of people interfacing with your code was small (teammates and graders).
Your definition of success was, in addition to something cool you can show off to your friends, was an A in the course.
When you graduate, all three of these factors change drastically. Software projects have a far larger timeline.
As a result, not only will your team [which, is probably larger] be interfacing with your code but future developers will too.
Whether the product you are working on is live or if it is an internal project, your definition of success is now to build a stable product.
In order to have more accountability and responsibility in larger features, everything you build needs to be stable.

This section will cover two main tools that will help you adjust to this new landscape:

  * The Art of Incremental Development
  * Test Driven Development

The Art of Incremental Development
-

Now that we have established that you are coding to a greater audience, you will need to tailor yourself to their needs.
It is standard to have teammates review each other's features through pull requests prior to merging them in. Now these other developers will be working on
their own features in addition to reviewing other teammates codes. The hardest pull request to review is one with large file changes.
While waiting untill you are feature complete before you submit your code for review sounds like the obviously right thing to do, there are a few drawbacks to that approach.
First off, you will be behind on changes, some of which may require rework on your own feature.
Second off, as your definition of success is now stability, the smaller your changes are, the easier you can guarantee that you will succeed.
Lastly, reviewing a long PR is hard and is more prone to missing mistakes and issues.

Let's use a simple example to demonstrate this approach. Say, you're working on Facebook for dogs and you need to build out two configuration options that allow pups to set their privacy preferences and set their name tag.
A good progression of pull requests for this feature would be:

1) Adding the Settings option in the appropriate location and showing two unclickable options (with appropriate tests)
2) Enabling the Privacy Preferences option and building the form for the options
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

Let's demonstrate by going back to the settings feature for our Facebook for dogs.
There are multiple testing frameworks available depending on what stack you are building in.
These features are written in [Gherkin](https://cucumber.io/docs/reference), which is a Domain Specific Language that lets you describe software's behaviour without detailing how that behaviour is implemented.
A good set of feature tests for this task would be:

```gherkin
Feature: Configuration Settings

Scenario: Viewing the Settings Options
  Given I am logged in
  When I select the settings option
  Then I see the following options:
    | OPTION              |
    | Privacy Preferences |
    | Name Settings       |


Scenario: Viewing the Privacy Preferences Options
  Given I am logged In
  And I select the settings option
  And I click on the "Privacy Preferences" link
  When I expand the privacy dropdown
  Then I see the following options:
    | OPTION            |
    | Friends Only      |
    | Public            |
    | Friends Except... |
    | Custom            |
  And the "Save" button is disabled


Scenario: Configuring Privacy Settings to Friends Only
  Given I am logged In
  And I select the settings option
  And I click on the "Privacy Preferences" link
  When I select the "Friends Only" in the privacy dropdown
  And I click the button 'Save'
  Then new posts' privacy dropdown should be defaulted to "Friends Only"


Scenario: Changing Name Tag to Existing Name Fails
  Given I am logged In
  And I select the settings option
  And I click on the "Name Settings" link
  When I enter the name "Boo" into the "name" field
  And I click the button "Check Availability"
  Then I see the error "Error. Name already Taken."
  And the "Save" button is disabled

```

Why is this so powerful? Product owners can review these scenarios and validate the user interaction prior to development.
The sooner the interaction gets nailed down, the less iterations you will need to make.
Once they're approved, you will have a solid foundation for incremental development -- make each scenario pass.

Another benefit to having these tests is that they protect your feature from future harm.
As code lifespan is now longer, you may have other contributors who may make changes that affect your features.
With these tests now running every push, they will be informed immediately and your feature stays safe.

Don't procrastinate on them and take the opportunity after you've built it to write a few edge cases and try to break your own feature.
The fewer bugs you create, the less technical debt you will generate!
