# Docsify Plugins
I use Docsify a lot for this site and for work, so, in addition to fully utilizing it for things like my [(WIP) D&D 5e Character Sheet Template](/misc/dnd-5e/TEMPLATE.md), I have worked on contributing to and creating some plugins for Docsify.

**Contribution(s):**
* [docsify-footnote: Add hideSubAnchor config to hide the subAnchor index from the user](https://github.com/Robert-Du0001/docsify-footnote/pull/5)

## Drawcsify
[Drawcsify](https://github.com/fenriskiba/drawcsify) is a [Draw.io](https://app.diagrams.net/) plugin for Docsify, that allows diagrams to be directly embedded into a Docsify website.

Based on [KonghaYao/docsify-drawio](https://github.com/KonghaYao/docsify-drawio), this fork improves the experience of importing the package into a Docsify project, improves compatibility with [docsify-themeable](https://jhildenbiddle.github.io/docsify-themeable/#/), and adds a background to the diagram to improve read-ability.

Unfortunately, while it is usable, I don't consider Drawcsify to be in an acceptable state yet, as it does still encounter [issues with certain styles](https://github.com/fenriskiba/drawcsify/issues/1) and I have not yet verified what work needs to be done to ensure it is an accessible solution.

## Archived - docsify-enable-checkbox
!> I archived this project because I believe there is an issue with how I add it to the docsify plugin object causing some weirdness depending on the order you import the plug in. By the time I got around to fixing it, I found there was [another project](https://andreferra.github.io/docsify-plugin-interactive-checkboxes/#/) that did the same thing with some additional features, so I just decided to just archive this and direct anyone to that project.  
The only thing this one adds is the ability to disable the functionality on certain pages, but I was never happy with how that was implemented anyway.

[docsify-enable-checkbox](https://github.com/fenriskiba/docsify-enable-checkbox) is an extremely small package that renders checkmarks added in the markdown as enabled, rather than disabled the way Docsify normally renders them.

By default, it is applied to all pages in a Docsify site, but it has simple configurations to exclude pages or to only apply to predetermined pages.