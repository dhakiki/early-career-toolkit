module.exports = function () {

  this.Given(/^I am on the home page$/, function (callback) {
    // Write code here that turns the phrase above into concrete actions
    callback(null, 'pending');
  });

  this.Then(/^I see the text "([^"]*)"$/, function (arg1, callback) {
    // Write code here that turns the phrase above into concrete actions
    return true
  });

}
