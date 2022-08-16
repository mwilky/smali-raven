.class public final Lcom/android/systemui/statusbar/phone/NotificationTapHelper;
.super Ljava/lang/Object;
.source "NotificationTapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$Factory;
    }
.end annotation


# instance fields
.field public mTrackTouch:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    throw p1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    throw p1

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    throw p1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const v0, 0x7fffffff

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    return p0
.end method
