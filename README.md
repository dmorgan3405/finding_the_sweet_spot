# Finding the Sweet Spot: The Art of Writing Scenarios

# How to Improve the first draft (SFD)


## 1. Cohesive Scenario Titles

Do they all support the feature?

Does the feature title include the actor?

Are the words consistent?

## 2. Narrative

Can you find all of these?

  - the user
  - the need
  - the benefit

## 3. Remove the noise

Remove unnecessary data and details.


## 4. Focus on the behavior

Remove implementation details and scriptiness.

Imperative: Instructing how to do it.

Versus

Declarative: Describing what the goal is

Tips:
- Ask, "How would a non-technical user describe this step?"
- Try and remove any details of the underlying technology
- Look for steps that can be combined into a single domain action


## 5. The Pre-Condition / Context - Given

Are all really necessary?

Anything missing?

Are there common pre-conditions that could be part of a background?

Look for steps that can be combined into a single domain pre-condition.


## 6. The Action - When

Isolate the trigger

Are my whens cohesive?

Are there given's hiding in your action?

Is the when focused on only changing the state of the given pre-conditions? It should describe the feature?

Look for steps that can be combined into a single domain action.


## 7. The Outcome - Then

Should focus on the outcome of the action

The outcomes examined must be ones observable by the user, not something buried inside the system


# Additional notes

## The words matter

Create a vocabulary shared by everyone.
- Use the language of the business.
- Be consistent
- Be disciplined

The words will end up in your codebase. (Domain-Driven Design)
