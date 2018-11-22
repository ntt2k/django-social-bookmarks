from django.shortcuts import get_object_or_404, redirect, render
from django.contrib.auth.decorators import login_required
from django.core.exceptions import PermissionDenied
from django.contrib.auth.models import User

from .models import Bookmark
from .forms import BookmarkForm


def bookmark_list(request):
    bookmarks = Bookmark.public.all()
    if request.GET.get('tag'):
        bookmarks = bookmarks.filter(tags__name=request.GET['tag'])
    context = {"bookmarks": bookmarks}
    return render(request, "social_bookmarks/bookmark_list.html", context)


def bookmark_user(request, username):
    user = get_object_or_404(User, username=username)
    if request.user == user:
        bookmarks = user.bookmarks.all()
    else:
        bookmarks = Bookmark.public.filter(owner__username=username)
    if request.GET.get('tag'):
        bookmarks = bookmarks.filter(tags__name=request.GET['tag'])
    context = {"bookmarks": bookmarks, "owner": user}
    return render(request, "social_bookmarks/bookmark_user.html", context)


@login_required
def bookmark_create(request):
    if request.method == "POST":
        form = BookmarkForm(data=request.POST)
        if form.is_valid():
            bookmark = form.save(commit=False)
            bookmark.owner = request.user
            bookmark.save()
            form.save_m2m()
            return redirect("social_bookmark_user", username=request.user.username)
    else:
        form = BookmarkForm()
    context = {"form": form, "create": True}
    return render(request, "social_bookmarks/form.html", context)


@login_required
def bookmark_edit(request, pk):
    bookmark = get_object_or_404(Bookmark, pk=pk)
    if bookmark.owner != request.user and not request.user.is_superuser:
        raise PermissionDenied
    if request.method == "POST":
        form = BookmarkForm(instance=bookmark, data=request.POST)
        if form.is_valid():
            form.save()
            return redirect("social_bookmark_user", username=request.user.username)
    else:
        form = BookmarkForm(instance=bookmark)
    context = {"form": form, "create": False}
    return render(request, "social_bookmarks/form.html", context)
