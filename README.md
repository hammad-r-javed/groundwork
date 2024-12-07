# groundwork
Simple project initialisation tool, using project templates

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

# TODO
- [ ] Support the passing of configuration parameters into templates
