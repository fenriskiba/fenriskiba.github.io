# Future Projects
A list of ideas for future projects I'd like to start one day.

## DM Campaign Creator (Name TBD)
A tool to simplify creating D&D 5e campaigns, by automatically generating encounter stat blocks based on party level, setting, etc. Most likely, this app will be written in Go using Templ/HTMX, though I may also consider a ReactJS frontend.

### Planned Features
* Automatically load SRD Monster Stat Blocks
* Allow input of custom stat blocks
* Generate encounters based on:
  * Number of Players
  * Player Levels
  * Requested Number of Enemies
  * Tags that can be used to determine setting, packs of enemies, etc.
* Randomly generate rewards for encounters

?> **Note:** Additional features may be considered and added later. There are a lot of other features that could make creating campaigns easier, but many of the others have tools available for that.

## Lædingr - Mock OAuth Container
I want to create a simple Mock OAuth container (similar to [navikit/mock-oauth-server](https://github.com/navikt/mock-oauth2-server)) that can be used with `docker compose` to better simulate a full architecture in a local environment or test automation pipeline.

Existing tools for this work well, but don't include all the features I'd like to see. Most notably, I'd like to have the ability to pre-define different mock users and be able to select one from a list. The mock-oauth2-server container has a way to define a single entity or define one when you sign in, which technically gives all the capabilities I need, but not with the same quality of life.

Mostly looking to create something new from scratch rather than contribute back to an existing project is just for the experience of building something like this from the ground up.