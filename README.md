# groundwork
Simple project initialisation tool, using project templates.

# Installation
1. Pull the repo down somewhere
1. Inside the repo, create a folder called `templates`.
1. Set the following global environment variable `export GROUNDWORK_TEMPLATES="<path to repo>/templates"`.

# Creating Templates
A template has 2 parts, as far as the `groundwork` script is concerned. To create a template, say `python-basic`, simply create the following, inside the `templates` folder which was created during the installation steps.

```
python-basic/
    python-basic.sh
```

The template script (in this case, `python-basic`) will always be passed the path of the dir in which the "groundwork" command was run, so that the script knows the current proj directory.

That's it! All you need to do now is fill out the script which will do all the hard work!

## Template Example - Elm + Python Flask Proj
**Template folder structure**
```
templates/elm-flask/
├── elm-flask.sh
└── files
    ├── build.sh
    ├── clean.sh
    ├── client
    │   ├── elm.json
    │   └── src
    │       ├── elm
    │       │   ├── Main.elm
    │       │   └── PageStyle.elm
    │       └── html
    │           ├── 404.html
    │           └── main.html
    ├── create_py_venv.sh
    ├── README.md
    ├── run.sh
    ├── server.py
```

**`elm-flask.sh` script**
```bash
LOG_SUFFIX="[elm-flask] "

if [ $# -ne 1 ]; then
    echo "$LOG_SUFFIX No project directory passed to script!"
    echo ""
    exit
fi

echo "$LOG_SUFFIX Running template"
echo "$LOG_SUFFIX Copying Files"

cp -R $GROUNDWORK_TEMPLATES/elm-flask/files/* $1/
cp $GROUNDWORK_TEMPLATES/elm-flask/files/.gitignore $1/

echo "$LOG_SUFFIX Template finished running"
```

This is just a super simple script that copies everything in the template's `files/` sub-directory, into project directory that was passed to the script.

# TODO
- [ ] Support the passing of configuration arguments into templates
