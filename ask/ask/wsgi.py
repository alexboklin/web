"""
WSGI config for ask project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.6/howto/deployment/wsgi/
"""

import os

#, sys
#sys.path.append('/home/box/web/ask')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "ask.settings")

from django.core.wsgi import get_wsgi_application
app = get_wsgi_application()
