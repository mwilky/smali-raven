.class public final Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;
.super Landroidx/lifecycle/LiveData;
.source "ComplicationCollectionLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/Collection<",
        "Lcom/android/systemui/dreams/complication/Complication;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public final mStateControllerCallback:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStateController;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    new-instance v0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;-><init>(Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    return-void
.end method


# virtual methods
.method public final onActive()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v1, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->getComplications()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onInactive()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mStateControllerCallback:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, p0}, Lcom/android/systemui/util/wakelock/WakeLock$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
