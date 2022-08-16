.class public final Lcom/android/wm/shell/pip/PipMediaController;
.super Ljava/lang/Object;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/PipMediaController$TokenListener;,
        Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;,
        Lcom/android/wm/shell/pip/PipMediaController$ActionListener;
    }
.end annotation


# instance fields
.field public final mActionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/pip/PipMediaController$ActionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMediaActionReceiver:Lcom/android/wm/shell/pip/PipMediaController$1;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public final mMetadataListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;",
            ">;"
        }
    .end annotation
.end field

.field public mNextAction:Landroid/app/RemoteAction;

.field public mPauseAction:Landroid/app/RemoteAction;

.field public mPlayAction:Landroid/app/RemoteAction;

.field public final mPlaybackChangedListener:Lcom/android/wm/shell/pip/PipMediaController$2;

.field public mPrevAction:Landroid/app/RemoteAction;

.field public final mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

.field public final mTokenListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/pip/PipMediaController$TokenListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/wm/shell/pip/PipMediaController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/PipMediaController$1;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaActionReceiver:Lcom/android/wm/shell/pip/PipMediaController$1;

    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipMediaController$2;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Lcom/android/wm/shell/pip/PipMediaController$2;

    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.android.wm.shell.pip.PLAY"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "com.android.wm.shell.pip.PAUSE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "com.android.wm.shell.pip.NEXT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "com.android.wm.shell.pip.PREV"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.systemui.permission.SELF"

    const/4 v5, 0x2

    move-object v0, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const p2, 0x7f130563

    const v0, 0x7f080795

    invoke-virtual {p0, v7, p2, v0}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(Ljava/lang/String;II)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    const p2, 0x7f13056a

    const v0, 0x7f080796

    invoke-virtual {p0, v6, p2, v0}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(Ljava/lang/String;II)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    const p2, 0x7f13056c

    const v0, 0x7f080798

    invoke-virtual {p0, v8, p2, v0}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(Ljava/lang/String;II)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const p2, 0x7f13056d

    const v0, 0x7f080799

    invoke-virtual {p0, v9, p2, v0}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(Ljava/lang/String;II)Landroid/app/RemoteAction;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-class p2, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method


# virtual methods
.method public final addActionListener(Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;->onMediaActionsChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final getDefaultRemoteAction(Ljava/lang/String;II)Landroid/app/RemoteAction;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/app/RemoteAction;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {p1, p3, p2, p2, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object p1
.end method

.method public final getMediaActions()Ljava/util/List;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->isActive()Z

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    const-wide/16 v5, 0x10

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v9

    :goto_0
    invoke-virtual {v4, v5}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-wide/16 v4, 0x2

    and-long/2addr v4, v2

    cmp-long v1, v4, v7

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    const-wide/16 v4, 0x20

    and-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v6, v9

    :goto_2
    invoke-virtual {v1, v6}, Landroid/app/RemoteAction;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final resolveActiveMediaController(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public final setActiveMediaController(Landroid/media/session/MediaController;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eq p1, v0, :cond_6

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Lcom/android/wm/shell/pip/PipMediaController$2;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Lcom/android/wm/shell/pip/PipMediaController$2;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p1}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0, v1}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_6
    return-void
.end method
