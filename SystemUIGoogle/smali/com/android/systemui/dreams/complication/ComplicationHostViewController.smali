.class public final Lcom/android/systemui/dreams/complication/ComplicationHostViewController;
.super Lcom/android/systemui/util/ViewController;
.source "ComplicationHostViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final mComplicationCollectionViewModel:Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

.field public final mComplications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/dreams/complication/ComplicationId;",
            "Lcom/android/systemui/dreams/complication/Complication$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field public final mLayoutEngine:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

.field public final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mComplications:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mLayoutEngine:Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p4, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mComplicationCollectionViewModel:Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mComplicationCollectionViewModel:Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    iget-object v0, v0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;->mComplications:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/complication/ComplicationHostViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/dreams/complication/ComplicationHostViewController;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 0

    return-void
.end method

.method public final onViewDetached()V
    .locals 0

    return-void
.end method
