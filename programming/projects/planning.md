# Future Projects
A list of ideas for future projects I'd like to start one day.

## DM Campaign Creator (Name TBD)
A tool to simplify creating D&D 5e campaigns, by automatically generating encounter stat blocks based on party level, setting, etc.

### Planned Features
* Automatically load SRD Monster Stat Blocks
* Allow input of custom stat blocks
* Generate encounters based on:
  * Number of Players
  * Player Levels
  * Requested Number of Enemies
  * Tags that can be used to determine setting, packs of enemies, etc.
* Randomly generate rewards for encounters

**Note:** Additional features may be considered and added later. There are a lot of other features that could make creating campaigns easier, but many of the others have tools available for that.

### Tech Stack
There are currently two technical stacks being considered:
* NextJS + MongoDB
* ReactJS + Go + MongoDB

NextJS is the current plan, but I am considering using Go to develop some experience with the language.

## Drawcsify
A [Draw.io](https://app.diagrams.net/) plugin for Docsify, that allows diagrams to be directly embedded into a Docsify website.

Currently, the only solution for this is [KonghaYao/docsify-drawio](https://github.com/KonghaYao/docsify-drawio), which I have encountered issues with text rendering. I also find its solution of needing to add a render function as part of the Docsify config a bit inelegant, and would like to develop a simpler solution.

## Mock OAuth Tool
I want to create a simple Mock OAuth container (similar to [navikit/mock-oauth-server](https://github.com/navikt/mock-oauth2-server)) that can be used with `docker compose` to better simulate a full architecture in a local environment or test automation pipeline.

Existing tools for this work well, but don't include all the features I'd like to see. Most notably, I'd like to have the ability to pre-define different mock users and be able to select one from a list. The mock-oauth2-server container has a way to define a single entity or define one when you sign in, which technically gives all the capabilities I need, but not with the same quality of life.

Mostly looking to create something new from scratch rather than contribute back to an existing project is just for the experience of building something like this from the ground up.