# ifcontainers

Dev Containers for interactive fiction.

Dev containers are a way to both keep dev tools out of your OS install, and to make sure you (and any
potential contributers) use the same development environment on every device. Dev containers are
also used for the GitHub Codespaces cloud IDE system.

## How to use

The easiest way (to my knowledge) of developing in a dev container is via Visual Studio Code. You
will need the "Dev Containers" extension. Once you have that, open your project folder, create
a `.devcontainer` folder at its root, and in it create a file called `devcontainer.json` with
the following content:

```json
{
    "image": "ghcr.io/awlck/ifcontainers/dialog:1a01-1.1.0"
}
```

This would give you the Dialog compiler in the current (at the time of writing) release verion
`1a01` plus library version `1.1.0`.

Once you have this, the Dev Containers extension should prompt you to reopen the project in
a container. Your project folder will automatically be mounted into the container.

(Obviously, you need Docker installed for this to work. The VS Code extension talks to the
Docker socket directly, so I don't think there's an easy way to make this work with Podman
or other container systems.)
