# partnerspaces

This repository contains a set of partner-spaces to be installed in the left ambience drawer.

## List of partner-spaces

TODO

## For partner-spaces developers

This repository generates two packages, `partnerspaces` and `partnerspaces-unmaintained`.
The only difference between those two packages are the status of the partner-spaces. If a partner-space has no maintainer
or if the partner-spaces hasn't been updated to make it compatible with the latest SailfishOS release in a 1 month
timeframe, then the partner-spaces will be considered unmaintained.

A maintainer is registered inside the JSON metadata file. Either use your real name, as displayed
on Github or Twitter, or use your usual nickname.

```json
{
    "name": "My super partner-spaces",
    "description": "Some description.",
    "qml": "/usr/share/mypartnerspace/main.qml",
    "infos": {
        "maintainer": "Foo Bar"
    }
}

```

The partner-space JSON metadata file uses the following fields:
- `name` is a descriptive name of the partner-space. (mandatory)
- `description` is a longer description of the partner-space. (mandatory)
- `infos` is a JSON object containing informations about the partner-space.
  - `maintainer` is the name of the maintainer. (mandatory)
- `launcher` is the path to the partner-enabled application.
- `qml` is the path to the *main* QML file for a QML-only partner application.

Partner-enabled application is a Sailfish application that provides a flag to the main window,
so that the compositor displays it in the left ambience drawer. Partner-enabled applications
are invoked via `partnerspace-launcher` inside SailfishOS.

Instead of passing this flag, you can write a QML only application, and use a specific invoker
to make it partner-enabled. This invoker is called `partnerspacemanager-launcher` and is currently
part of the `patchmanager` repository.

If you don't provide either `launcher` or `qml` field in the JSON metadata, the `main.qml` file that
is found in the same folder as the JSON metadata file will be picked.

