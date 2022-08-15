.class public abstract Lcom/android/server/media/MediaKeyDispatcher;
.super Ljava/lang/Object;
.source "MediaKeyDispatcher.java"


# instance fields
.field public mOverriddenKeyEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static isDoubleTapOverridden(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLongPressOverridden(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSingleTapOverridden(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTripleTapOverridden(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMediaButtonReceiver(Landroid/view/KeyEvent;IZ)Landroid/app/PendingIntent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaSession(Landroid/view/KeyEvent;IZ)Landroid/media/session/MediaSession$Token;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOverriddenKeyEvents()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/media/MediaKeyDispatcher;->mOverriddenKeyEvents:Ljava/util/Map;

    return-object p0
.end method

.method public onDoubleTap(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onLongPress(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTap(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onTripleTap(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method
