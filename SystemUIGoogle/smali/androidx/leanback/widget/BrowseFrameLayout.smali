.class public Landroidx/leanback/widget/BrowseFrameLayout;
.super Landroid/widget/FrameLayout;
.source "BrowseFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;,
        Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;
    }
.end annotation


# instance fields
.field private mListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field private mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

.field private mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/leanback/widget/BrowseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/BrowseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    iget-object v1, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnDispatchKeyListener:Landroid/view/View$OnKeyListener;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-interface {v1, p0, v0, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "focused",
            "direction"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mListener:Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;->onFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "child",
            "focused"
        }
    .end annotation

    iget-object v0, p0, Landroidx/leanback/widget/BrowseFrameLayout;->mOnChildFocusListener:Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;->onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
