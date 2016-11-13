# Finding the Sweet Spot: The Art of Writing Scenarios

Gherkin used for finding the sweet spot talk

## Cohesive Scenario Titles

Do they all support the feature?
Does the feature title include the actor?
Are the words consistent?

## Remove the noise

Remove unnecessary data and details.

## Focus on the behavior

Remove implementation details and scriptiness.

- Ask, "How would a non-technical user describe this step?"
- Try and remove any details of the underlying technology
- Look for steps that can be combined into a single domain action


# Things to look for:

## The Pre-Condition / Context - Given

Are all really necessary?

Anything missing?

Are there common pre-conditions that could be part of a background?

Look for steps that can be combined into a single domain pre-condition.

## The Action - When

Are my whens cohesive?

Are there given's hiding in your action?

Is the when focused on only changing the state of the given pre-conditions?

Look for steps that can be combined into a single domain action.


## The Outcome - Then

Should focus on the outcome of the action
