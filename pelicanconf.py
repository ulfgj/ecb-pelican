AUTHOR = 'ulf.gj'
SITENAME = 'English Comedy Brussels'
SITEURL = ""

PATH = "content"
TIMEZONE = 'Europe/Brussels'
DEFAULT_LANG = 'en'

ARTICLE_URL = '{slug}/'
ARTICLE_SAVE_AS = '{slug}.html'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

THEME = "theme"
STYLESHEET_URL = True

DISPLAY_PAGES_ON_MENU = True
# TWITTER_USERNAME =

# Blogroll
LINKS = (
    # ("Pelican", "https://getpelican.com/"),
    # ("Python.org", "https://www.python.org/"),
    # ("Jinja2", "https://palletsprojects.com/p/jinja/"),
    # ("You can modify those links in your config file", "#"),
)

# Social widget
SOCIAL = (
    # ("You can add links in your config file", "#"),
    # ("Another social link", "#"),
)

DEFAULT_PAGINATION = False

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True


####   my misc variables and logic   #######

from datetime import datetime
CURRENT_DATE = datetime.now()
