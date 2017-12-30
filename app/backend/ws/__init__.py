
# -*- coding: utf-8 -*-
"""Read the Docs."""

import os, os.path

from configparser import RawConfigParser
BASE_DIR = os.path.dirname(os.path.dirname(__file__))

def get_version():
    """Return package version from setup.cfg."""
    setupcfg_path = os.path.abspath(
        os.path.join(os.path.dirname(__file__), '..', 'setup.cfg')
    )
    with open(BASE_DIR + '/f.txt', 'w') as f:
    	f.write(setupcfg_path)
    config = RawConfigParser()
    config.read(setupcfg_path)
    return config.get('metadata', 'version')

__version__ = get_version()