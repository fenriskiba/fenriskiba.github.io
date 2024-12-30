# Flagr
In my role as a developer at Progressive Insurance, I've made and helped other developers make a number of contributions to [Flagr](https://openflagr.github.io/flagr/#/); an open source feature flagging microservice.

Flagr is a containerized REST API written in Go to control feature switches, assign and record variants in an A/B Test, and provide dynamic configurations.

## Contributions
### Added Tags for Organizational Management
**Design Discussion:** [openflagr/flagr #362](https://github.com/openflagr/flagr/issues/362)  
**Pull Request:** [openflagr/flagr #369](https://github.com/openflagr/flagr/pull/369)

**Description:** Organizing and identifying groups of flags can be helpful for many different reason, so we decided to contribute the ability to add tags to different feature flags. The contribution included the ability to add/remove tags to flags, search for flag configurations by tag, and evaluate against every flag with a given tag.  
To help with this contribution, I consulted on the design, reviewed design elements with the Flagr owners, helped to test the changes, and submitted the pull request for the contribution.

### Expose Kafka Idempotency Config
**Pull Requests:**  
* [openflagr/flagr-archived #45](https://github.com/openflagr/flagr-archived/pull/45)
* [openflagr/flagr-archived #51](https://github.com/openflagr/flagr-archived/pull/51)

**Description:** To help prevent duplicate records in Flagr's analytics logging, I developed and contributed configurations to enable Flagr to be a [Kafka Idempotent Production](https://www.confluent.io/blog/exactly-once-semantics-are-possible-heres-how-apache-kafka-does-it/). The package Flagr uses to produce evaluation records to Kafka, [Sarama](https://github.com/Shopify/sarama), had the required configurations in a new version, so it was just a matter of understanding the [required configurations](https://stackoverflow.com/a/67909822/3352126) and exposing them through Flagr's existing configuration solution.  
As a part of this effort, I also submitted a separate contribution to bump the Alpine and Node container image versions to resolve some support and security concerns.

### Migrate from GORM v1 to v2
**Pull Request:** [openflagr/flagr-archived #59](https://github.com/openflagr/flagr-archived/pull/59)

**Description:** As a prerequisite step to our [Flagr RBAC Solution](#flagr-rbac-design), we needed to upgrade the version of GORM Flagr uses to manage its database. This was a fairly significant change due to GORM being almost completely rewritten between v1 and v2.  
For this contribution, I coached another developer writing the code, directed them to tools to help test their changes locally, and did a review of the code before submitting the contribution (the new developer was unable to submit the contribution themselves due to a permissions issue, so I submit the PR for them).

### Add JWKS Support
**Pull Request:** [openflagr/flagr-archived #62](https://github.com/openflagr/flagr-archived/pull/62)

**Description:** To improve Flagr's existing [JWT Authorization](https://jwt.io/introduction), we contributed a new configuration to Flagr to automatically fetch and use a [web hosted JWKS](https://auth0.com/docs/secure/tokens/json-web-tokens/json-web-key-sets) to use when validating the source of a JWT.  
For this contribution, I helped another developer choose between several different implementation options, performed an internal review of the code, and helped them to submit their first open source pull request.

### Flagr RBAC Design
**Design Discussion:** [openflagr/flagr-archived #54](https://github.com/openflagr/flagr-archived/discussions/54)  
**Pull Request:** [openflagr/flagr-archived #67](https://github.com/openflagr/flagr-archived/pull/67)

**Description:** For larger organizations to utilize a centralized Flagr instance that multiple teams could use, Flagr needed a way to control which teams could perform different action on each feature flag in Flagr. Due to the Flagr owners showing some interest in [Casbin](https://casbin.org/), we chose to utilize that to develop Role Based Access Control (RBAC) that would allow Flagr users to flexibly define custom policies for different RBAC schemas. The design allows for per-API, per-feature flag, and per-HTTP Method access to be granted, administrative roles with full access to all Flagr actions, and policies to be applied to individual users, groups of users defined in Flagr, or roles provided by an encrypted JWT.  
I researched, created, and documented the design for this contribution, performed internal code reviews, assisted with development testing, and provided guidance on Git best practices when submitting the pull request.