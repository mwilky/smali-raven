.class public interface abstract Landroidx/leanback/widget/BrowseFrameLayout$OnChildFocusListener;
.super Ljava/lang/Object;
.source "BrowseFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/BrowseFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChildFocusListener"
.end annotation


# virtual methods
.method public abstract onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
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
.end method

.method public abstract onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
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
.end method
