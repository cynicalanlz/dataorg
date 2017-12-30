#!/bin/bash

if [ ! -f .pwd_text ]; then
	echo "Writing passwords";
    echo PW_DJANGO_DB="$(pwgen)" > .pwd_text;
    echo PW_POSTGRES=="$(pwgen)" >> .pwd_text;    
fi