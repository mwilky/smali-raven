.class public final Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;
.super Ljava/lang/Object;
.source "ComplicationCollectionLiveData.java"

# interfaces
.implements Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;->this$0:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailableComplicationTypesChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;->this$0:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->getComplications()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onComplicationsChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData$1;->this$0:Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    invoke-virtual {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->getComplications()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
