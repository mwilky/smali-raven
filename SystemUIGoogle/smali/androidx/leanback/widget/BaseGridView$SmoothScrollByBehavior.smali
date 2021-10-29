.class public interface abstract Landroidx/leanback/widget/BaseGridView$SmoothScrollByBehavior;
.super Ljava/lang/Object;
.source "BaseGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/BaseGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmoothScrollByBehavior"
.end annotation


# virtual methods
.method public abstract configSmoothScrollByDuration(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation
.end method

.method public abstract configSmoothScrollByInterpolator(II)Landroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation
.end method
