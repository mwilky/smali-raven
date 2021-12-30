.class public Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;
.super Landroid/widget/FrameLayout;
.source "ColumbusGestureIndicatorView.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/settings/gestures/columbus/ColumbusGestureIndicatorView;->mHandler:Landroid/os/Handler;

    return-void
.end method
