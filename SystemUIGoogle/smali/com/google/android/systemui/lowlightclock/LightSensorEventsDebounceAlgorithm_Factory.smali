.class public final Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm_Factory;
.super Ljava/lang/Object;
.source "LightSensorEventsDebounceAlgorithm_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;",
        ">;"
    }
.end annotation


# instance fields
.field public final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm_Factory;->executorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm_Factory;->resourcesProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    new-instance v1, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/lowlightclock/LightSensorEventsDebounceAlgorithm;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;)V

    return-object v1
.end method
