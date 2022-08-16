.class public final Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor_Factory;
.super Ljava/lang/Object;
.source "AmbientLightModeMonitor_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;",
        ">;"
    }
.end annotation


# instance fields
.field public final algorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
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
            "Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/AsyncSensorManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor_Factory;->algorithmProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor_Factory;->algorithmProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor_Factory;->sensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/sensors/AsyncSensorManager;

    new-instance v1, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;-><init>(Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;Lcom/android/systemui/util/sensors/AsyncSensorManager;)V

    return-object v1
.end method
