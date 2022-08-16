.class public final Lcom/android/systemui/dreams/touch/dagger/BouncerSwipeModule;
.super Ljava/lang/Object;
.source "BouncerSwipeModule.java"


# direct methods
.method public static providesSwipeToBouncerStartRegion(Landroid/content/res/Resources;)F
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const v1, 0x7f07020d

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method
