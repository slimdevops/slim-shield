# Slim Shield Circle CI Orb
The Slim Shield automates the process of container hardening by observing the running container, understanding its requirements, and removing unnecessary components. It is designed to enhance the security of your containerized applications by implementing best practices for container hardening. The result is a more secure container image that you can access in the SlimAI portal. 


## Requirements
- CircleCI account 
- Slim Developer Platform account (Free at [www.slim.ai](https://www.slim.ai))

## Quickstart Resources: 
- [Blog: Node.JS Example](https://www.slim.ai/blog)
- [GitHub Repo: Node.JS Example](https://github.com/slimdevops/harden-orb-demo)

## Project Environment Variables
Your project will need the following environment variables added to your CircleCI environment:

- `TARGET_CONNECTOR_ID`: You can find your `CONNECTOR_ID` in the "My Registries" section of the Slim Platform (Target & Source can be same).
- `SOURCE_CONNECTOR_ID`: You can find your `CONNECTOR_ID` in the "My Registries" section of the Slim Platform (Target & Source can be same).
- `SLIM_ORG_ID`: Your `SLIM_ORG_ID` can be located in the "Personal Information" section, specifically under "Organizations" in the Slim Platform.
- `SLIM_API_TOKEN`: To obtain your `SLIM_API_TOKEN`, navigate to the "Personal Information" section in the Slim Platform and then proceed to the "Tokens" subsection.  

Sign up [here](https://portal.slim.dev/login)


## About the `.circleci/config.yml` file
The Slim.AI Orb is imported into your project here along with other `orbs`, with a organization identifier and orb slug, for example `slimdevops/slim-shield@0.0.3`. Other notable areas of the configuration include:
- `parameters` contain CircleCI Orb meta information about the Docker image intended for hardening.
- `jobs` defines the various jobs such as Instrumentation & Hardening that ensure the hardening process is executed within CircleCI.
- `workflows` orchestrates the execution of jobs in a certain sequence. Publishing the image, instrumenting it using Slim CLI, running tests, hardening the image. Both the instrumented and hardened image can be seen in the SlimAI portal where you provided the TARGET_CONNECTOR_ID. 


## Slim Community
For more information about configuring containers, vulnerability scans, or this orb example, check out the [SlimDevOps Community Discord](https://discord.com/invite/uBttmfyYNB), [SlimDevOps Community Forums](https://community.slim.ai/) and the [blog](https://www.slim.ai/blog/).