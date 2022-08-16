.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMediaController$ActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipNotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    return-void
.end method


# virtual methods
.method public final onMediaActionsChanged(Ljava/util/List;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mMediaActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->mCustomActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;->updateNotificationContent()V

    :cond_0
    return-void
.end method
