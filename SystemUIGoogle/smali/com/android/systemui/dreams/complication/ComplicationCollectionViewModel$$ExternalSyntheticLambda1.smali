.class public final synthetic Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    check-cast p1, Lcom/android/systemui/dreams/complication/Complication;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;->mTransformer:Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mComplicationIdFactory:Lcom/android/systemui/dreams/complication/ComplicationId$Factory;

    new-instance v2, Lcom/android/systemui/dreams/complication/ComplicationId;

    iget v3, v1, Lcom/android/systemui/dreams/complication/ComplicationId$Factory;->mNextId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/android/systemui/dreams/complication/ComplicationId$Factory;->mNextId:I

    invoke-direct {v2, v3}, Lcom/android/systemui/dreams/complication/ComplicationId;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/dreams/complication/ComplicationId;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mViewModelComponentFactory:Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent$Factory;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent$Factory;->create(Lcom/android/systemui/dreams/complication/Complication;Lcom/android/systemui/dreams/complication/ComplicationId;)Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent;->getViewModelProvider()Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/dreams/complication/ComplicationId;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    return-object p0
.end method
