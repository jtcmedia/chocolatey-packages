

## faas-cli
[![Build Status](https://travis-ci.com/openfaas/faas-cli.svg?branch=master)](https://travis-ci.com/openfaas/faas-cli)
[![Go Report Card](https://goreportcard.com/badge/github.com/openfaas/faas-cli)](https://goreportcard.com/report/github.com/openfaas/faas-cli)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![OpenFaaS](https://img.shields.io/badge/openfaas-serverless-blue.svg)](https://www.openfaas.com)

This is a CLI for use with [OpenFaaS](https://github.com/openfaas/faas) - a serverless functions framework for Docker & Kubernetes.

> Before using this tool please setup OpenFaaS by following instructions over on the main repo.

The CLI can be used to build and deploy functions to [OpenFaaS](https://github.com/openfaas/faas). You can build OpenFaaS functions from a set of supported language templates (such as Node.js, Python, CSharp and Ruby). That means you just write a handler file such as (handler.py/handler.js) and the CLI does the rest to create a Docker image.

Demo: [ASCII cinema](https://asciinema.org/a/141284)

### TL;DR - Introductory tutorial

[Blog: Coffee with the FaaS-CLI](https://blog.alexellis.io/quickstart-openfaas-cli/)

### Run the CLI

The main commands supported by the CLI are:

* `faas-cli new` - creates a new function via a template in the current directory
* `faas-cli login` - stores basic auth credentials for OpenFaaS gateway (supports multiple gateways)
* `faas-cli logout` - removes basic auth credentials for a given gateway

* `faas-cli up` - a combination of `build/push and deploy`

* `faas-cli build` - builds Docker images from the supported language types
* `faas-cli push` - pushes Docker images into a registry
* `faas-cli deploy` - deploys the functions into a local or remote OpenFaaS gateway

* `faas-cli remove` - removes the functions from a local or remote OpenFaaS gateway
* `faas-cli invoke` - invokes the functions and reads from STDIN for the body of the request
* `faas-cli store` - allows browsing and deploying OpenFaaS store functions

* `faas-cli secret` - manage secrets for your functions

* `faas-cli auth` - (alpha) initiates an OAuth2 authorization flow to obtain a cookie

### FaaS-CLI Developers / Contributors

See [contributing guide](https://github.com/openfaas/faas-cli/blob/master/CONTRIBUTING.md).

### License

This project is part of OpenFaaS and is licensed under the MIT License.

## Maintainer's Note

I produce and maintain Chocolatey packages in my spare time, for free. If you use my packages, and appreciate the time and effort I put into making and maintaining them, please consider making a small donation. Thank-you!

<script type="text/javascript" src="https://cdnjs.buymeacoffee.com/1.0.0/button.prod.min.js" data-name="bmc-button" data-slug="jtcmedia" data-color="#FFDD00" data-emoji=""  data-font="Cookie" data-text="Buy me a coffee" data-outline-color="#000000" data-font-color="#000000" data-coffee-color="#ffffff" ></script>
