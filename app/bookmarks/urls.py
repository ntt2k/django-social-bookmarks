"""bookmarks URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import include, url
from django.contrib import admin
from django.contrib.auth.views import login, logout
from django.core.urlresolvers import reverse_lazy

urlpatterns = [
    url(r"^admin/", admin.site.urls),
    url(r"^", include("social_bookmarks.urls")),
    url(r"^login/$", login, {"template_name": "login.html"}, name="bookmarks_login"),
    url(
        r"^logout/$",
        logout,
        {"next_page": reverse_lazy("social_bookmark_list")},
        name="bookmarks_logout",
    ),
]
