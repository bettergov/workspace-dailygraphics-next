# workspace-dailygraphics-next

Packing all of the setup for [nprapps/dailygraphics-next](https://github.com/nprapps/dailygraphics-next) into a single repo.

## Dependencies

This repo uses the workspaces feature of Yarn. Make sure you have [Yarn installed](https://yarnpkg.com/en/docs/install) and [read more about workspaces](https://yarnpkg.com/lang/en/docs/workspaces/).

This repo also uses git submodules. This is a helpful explanation of [how git submodules work](https://gist.github.com/gitaarik/8735255).

## Quickstart

```bash
yarn install
# [ ] fill out .env
yarn start:iterm
```

## Making this workspace your own

(A lot of this language is cribbed from [nprapps/dailygraphics-next](https://github.com/nprapps/dailygraphics-next).)

To run this project, you'll need Node 10.0 or higher installed. On OS X and Linux, [nvm](https://github.com/nvm-sh/nvm) is a good way to install and update Node.

Once you've done that:

1. From GitHub, create a new workspace repo by clicking "Use this template."

2. Clone your repo.

3. Edit `.gitmodules` with your own information.

4. Edit `./config.json` with your own information.

5. Run `yarn install` to install its dependencies and initialize the submodules.

6. In the root repo, fill out `.env` with your:

   - GOOGLE_OAUTH_CLIENT_ID
   - GOOGLE_OAUTH_CONSUMER_SECRET

   The Google OAuth variables should match the client ID and secret for an API app that can access your account. [This post has details on setting that up.](http://blog.apps.npr.org/2015/03/02/app-template-oauth.html)

   If you're deploying to S3, which is the default for the rig, you'll also need to set:

   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - AWS_DEFAULT_REGION

7. Start the rig.

   - If you're using iterm on OS X, just run `yarn start:iterm`.
   - Otherwise, in three terminal windows:

     ```bash
     # templates
     cd ./dailygraphics-templates/
     ```

     ```bash
     # webserver
     cd ./dailygraphics-next/
     source ../.env
     yarn start
     ```

     ```bash
     # graphics
     cd ./graphics-js/
     ```

## Getting started (even more detailed)

See [nprapps/dailygraphics-next#Getting started (in more detail)](https://github.com/nprapps/dailygraphics-next#getting-started-in-more-detail)
