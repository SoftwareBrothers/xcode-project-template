##XCodeProjectTemplate

The official project template of the RST-IT iOS team. This template should be the common base for all new projects and ensures common project structure and foundation classes.

## Motivation

When working for early stage startups we frequently have to start new projects from scratch. While doing this we noticed that we are spending a lot of time doing basic project setup and reimplementing the same structure and base classes in every project from scratch.

We hope that providing this template will save project setup time and also provide a common foundation that each team member will be accustomed to so that you don't have to think and explore the project structure and foundations. They will always be the same.

## Prerequisites:
- [Xcode9 or higher](https://developer.apple.com/xcode/)
- [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/installation.html)

## Usage

The project uses Cookiecutter for project templating. To create a new project from this template just run:

```
cookiecutter git@bitbucket.org:rstit/xcodeprojecttemplate.git
```

You will get a prompt to give a new app name. Thats it, you should have a new folder with your new app created based on this template!

## Additional configuration

You will have to manually configure the bundle id of the main target and test target.

## Contents

TBD

## Contributing

Every team member is free to contribute to this template. Just create a fork and then submit a pull request with your changes and explanation what is being done. The iOS team members will then review your PR and merge if justified.

Contributors:

- Piotr Gorzelany
