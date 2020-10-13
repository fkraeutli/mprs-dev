#!/bin/bash
source .env

CURRENT_DIR=pwd

base="http%3A%2F%2Frs.example.org%2F"
app="example"

cd $REPO_DIR

type=$1
identifier=$2

case $type in


"page")
    prefix="$basepage%2F"
    ;;
"partial")
    prefix="$basepartial%2F"
    ;;
"query")
    prefix="$basepage%2F"
    ;;
"queryPartial")
    prefix="$basepartial%2F"
    ;;
*)
    echo "Unknown type. Using default"
    prefix="$basepartial%2F"
    ;;
esac

filename="$prefix$identifier.html"

touch "platform/apps/$app/data/templates/$filename"

echo "Created new template $filename"