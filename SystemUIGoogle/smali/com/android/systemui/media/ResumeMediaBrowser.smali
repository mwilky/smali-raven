.class public final Lcom/android/systemui/media/ResumeMediaBrowser;
.super Ljava/lang/Object;
.source "ResumeMediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;,
        Lcom/android/systemui/media/ResumeMediaBrowser$Callback;
    }
.end annotation


# instance fields
.field public final mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

.field public final mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mConnectionCallback:Lcom/android/systemui/media/ResumeMediaBrowser$2;

.field public final mContext:Landroid/content/Context;

.field public final mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

.field public mMediaBrowser:Landroid/media/browse/MediaBrowser;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaControllerCallback:Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;

.field public final mSubscriptionCallback:Lcom/android/systemui/media/ResumeMediaBrowser$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/MediaBrowserFactory;Lcom/android/systemui/media/ResumeMediaBrowserLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaControllerCallback:Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;

    new-instance v0, Lcom/android/systemui/media/ResumeMediaBrowser$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$1;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mSubscriptionCallback:Lcom/android/systemui/media/ResumeMediaBrowser$1;

    new-instance v0, Lcom/android/systemui/media/ResumeMediaBrowser$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$2;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mConnectionCallback:Lcom/android/systemui/media/ResumeMediaBrowser$2;

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    iput-object p3, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iput-object p5, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    return-void
.end method


# virtual methods
.method public createMediaController(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowserLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v3, Lcom/android/systemui/media/ResumeMediaBrowserLogger$logDisconnect$2;->INSTANCE:Lcom/android/systemui/media/ResumeMediaBrowserLogger$logDisconnect$2;

    const-string v4, "MediaBrowser"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->updateMediaController()V

    return-void
.end method

.method public final isBrowserConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final updateMediaController()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaControllerCallback:Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/ResumeMediaBrowser;->createMediaController(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaControllerCallback:Lcom/android/systemui/media/ResumeMediaBrowser$SessionDestroyCallback;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    goto :goto_3

    :cond_7
    iput-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaController:Landroid/media/session/MediaController;

    :goto_3
    return-void
.end method
