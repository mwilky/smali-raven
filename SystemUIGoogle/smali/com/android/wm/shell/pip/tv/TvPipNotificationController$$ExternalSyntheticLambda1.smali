.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMediaController$TokenListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    return-void
.end method


# virtual methods
.method public final onMediaSessionTokenChanged(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    return-void
.end method
