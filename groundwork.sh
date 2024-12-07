currentdir=$(pwd)
if [ $# -ne 1 ]; then
    echo "Invalid number of arguments! Please provide a template name!"
    echo ""
    echo "Your existing templates are:"
    ls $GROUNDWORK_TEMPLATES
    exit
fi

if [ ! -f "$GROUNDWORK_TEMPLATES/$1/$1.sh" ]; then
    echo "Invalid template name! Please provide a valid template name!"
    echo ""
    echo "Your existing templates are:"
    ls $GROUNDWORK_TEMPLATES
    exit
fi

$GROUNDWORK_TEMPLATES/$1/$1.sh "$currentdir"
