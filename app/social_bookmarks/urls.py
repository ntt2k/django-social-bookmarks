from django.conf.urls import url
from social_bookmarks.views import (
    bookmark_list,
    bookmark_user,
    bookmark_create,
    bookmark_edit,
)


urlpatterns = [
    url(r"^user/(?P<username>[-\w]+)/$", bookmark_user, name="social_bookmark_user"),
    url(r"^create/$", bookmark_create, name="social_bookmark_create"),
    url(r"^edit/(?P<pk>\d+)/$", bookmark_edit, name="social_bookmark_edit"),
    url(r"^$", bookmark_list, name="social_bookmark_list"),
]
