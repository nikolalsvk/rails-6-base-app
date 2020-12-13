Feature: render_async loading partials with jQuery

  @javascript
  Scenario: Loading a partial with jQuery
    When I visit page with render_async and with jQuery
    Then I should see the GET partial load

  @javascript
  Scenario: Loading a partial with jQuery with POST request
    When I visit page with render_async and with jQuery
    Then I should see the POST partial load

  @javascript
  Scenario: Emitting an event with jQuery
    When I visit page with render_async and with jQuery
    Then I should see that event got dispatched

  @javascript
  Scenario: Loading error message with jQuery
    When I visit page with render_async and with jQuery
    Then I should see the error message

  @javascript
  Scenario: Loading error message after retrying with jQuery
    When I visit page with render_async and with jQuery
    Then I should see the error message after retrying

  @javascript
  Scenario: Emitting error event with jQuery
    When I visit page with render_async and with jQuery
    Then I should see that error event got dispatched

  @javascript
  Scenario: Rendering nested partial with jQuery
    When I visit page with render_async and with jQuery
    Then I should see that nested partial rendered

  @javascript
  Scenario: Toggling render_async
    When I visit page with render_async and with jQuery
    When I click toggle button
    Then I should see that toggled partial rendered

  @javascript
  Scenario: Default event dispatching
    When I visit page with render_async and with jQuery
    Then I should see that default events were dispatched

  @javascript
  Scenario: Controlling interval
    When I visit page with render_async and with jQuery
    When I click 'Stop polling' button
    Then I should see that the polling stopped
    When I click 'Start polling' button
    Then I should see that the polling started
