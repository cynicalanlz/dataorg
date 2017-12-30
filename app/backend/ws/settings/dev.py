"""Local development settings, including local_settings, if present."""
from __future__ import absolute_import
import os

from .base import CommunityBaseSettings
BASE_DIR = os.path.dirname(os.path.dirname(__file__))

with open(BASE_DIR+"/../.pwd_text", 'r') as f:
    pwd = {}
    for line in f:
        spl = line.strip().split('=')
        pwd[spl[0]] = spl[1]

class CommunityDevSettings(CommunityBaseSettings):

    """Settings for local development"""

    # Database
    # https://docs.djangoproject.com/en/2.0/ref/settings/#databases
    @property
    def DATABASES(self):  # noqa

        return {
            'default': {
                'ENGINE': 'django.db.backends.postgresql_psycopg2',
                'NAME': 'dataorg_django',
                'USER': 'docker',
                'PASSWORD': 'Kohhoog1',
                'HOST': 'dataorg-django.c1zdflvyihuy.us-west-2.rds.amazonaws.com',
                'PORT': '5432',
            }
        }

CommunityDevSettings.load_settings(__name__)

if not os.environ.get('DJANGO_SETTINGS_SKIP_LOCAL', False):
    try:
        # pylint: disable=unused-wildcard-import
        from .local_settings import *  # noqa
    except ImportError:
        pass