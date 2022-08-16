.class public final Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;
.super Ljava/lang/Object;
.source "ComplicationHostViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dreams/complication/ComplicationHostViewController;",
        ">;"
    }
.end annotation


# instance fields
.field public final layoutEngineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;",
            ">;"
        }
    .end annotation
.end field

.field public final lifecycleOwnerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field public final viewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/constraintlayout/widget/ConstraintLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/util/CarrierConfigTracker_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->layoutEngineProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->lifecycleOwnerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->viewModelProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->layoutEngineProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;

    iget-object v2, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->lifecycleOwnerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    iget-object p0, p0, Lcom/android/systemui/dreams/complication/ComplicationHostViewController_Factory;->viewModelProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;

    new-instance v3, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/dreams/complication/ComplicationHostViewController;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/android/systemui/dreams/complication/ComplicationLayoutEngine;Landroidx/lifecycle/LifecycleOwner;Lcom/android/systemui/dreams/complication/ComplicationCollectionViewModel;)V

    return-object v3
.end method
