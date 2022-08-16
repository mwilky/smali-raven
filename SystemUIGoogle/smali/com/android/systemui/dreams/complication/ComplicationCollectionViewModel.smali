.class public final Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ComplicationCollectionViewModel.java"


# instance fields
.field public final mComplications:Landroidx/lifecycle/MediatorLiveData;

.field public final mTransformer:Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationCollectionLiveData;Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;)V
    .locals 5

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;)V

    new-instance v1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    new-instance v2, Landroidx/lifecycle/Transformations$1;

    invoke-direct {v2, v1, v0}, Landroidx/lifecycle/Transformations$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;)V

    new-instance v0, Landroidx/lifecycle/MediatorLiveData$Source;

    invoke-direct {v0, p1, v2}, Landroidx/lifecycle/MediatorLiveData$Source;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Transformations$1;)V

    iget-object v3, v1, Landroidx/lifecycle/MediatorLiveData;->mSources:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v3, p1, v0}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/MediatorLiveData$Source;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroidx/lifecycle/MediatorLiveData$Source;->mObserver:Landroidx/lifecycle/Observer;

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This source was already added with the different observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget v2, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;->mComplications:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;->mTransformer:Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;

    return-void
.end method
