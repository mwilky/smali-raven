.class public final Lcom/android/systemui/media/dream/MediaDreamSentinel$1;
.super Ljava/lang/Object;
.source "MediaDreamSentinel.java"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/dream/MediaDreamSentinel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mAdded:Z

.field public final synthetic this$0:Lcom/android/systemui/media/dream/MediaDreamSentinel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/dream/MediaDreamSentinel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->this$0:Lcom/android/systemui/media/dream/MediaDreamSentinel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZIZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->mAdded:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->this$0:Lcom/android/systemui/media/dream/MediaDreamSentinel;

    iget-object p1, p1, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaDataFilter;->hasActiveMedia()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->mAdded:Z

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->this$0:Lcom/android/systemui/media/dream/MediaDreamSentinel;

    iget-object p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mComplication:Lcom/android/systemui/media/dream/MediaDreamComplication;

    invoke-virtual {p1, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addComplication(Lcom/android/systemui/dreams/complication/Complication;)V

    return-void
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->mAdded:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->this$0:Lcom/android/systemui/media/dream/MediaDreamSentinel;

    iget-object p1, p1, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaDataFilter;->hasActiveMedia()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->mAdded:Z

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel$1;->this$0:Lcom/android/systemui/media/dream/MediaDreamSentinel;

    iget-object p1, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/media/dream/MediaDreamSentinel;->mComplication:Lcom/android/systemui/media/dream/MediaDreamComplication;

    iget-object v0, p1, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/SmartspaceMediaData;Z)V
    .locals 0

    return-void
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method
