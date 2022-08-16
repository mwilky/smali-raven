.class public final Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;
.super Ljava/lang/Object;
.source "ComplicationViewModelTransformer.java"


# instance fields
.field public final mComplicationIdFactory:Lcom/android/systemui/dreams/complication/ComplicationId$Factory;

.field public final mComplicationIdMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/dreams/complication/Complication;",
            "Lcom/android/systemui/dreams/complication/ComplicationId;",
            ">;"
        }
    .end annotation
.end field

.field public final mViewModelComponentFactory:Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent$Factory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/dreams/complication/ComplicationId$Factory;

    invoke-direct {v0}, Lcom/android/systemui/dreams/complication/ComplicationId$Factory;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mComplicationIdFactory:Lcom/android/systemui/dreams/complication/ComplicationId$Factory;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationViewModelTransformer;->mViewModelComponentFactory:Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent$Factory;

    return-void
.end method
