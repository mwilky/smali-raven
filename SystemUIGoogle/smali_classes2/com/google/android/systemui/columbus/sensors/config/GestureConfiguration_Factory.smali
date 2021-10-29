.class public final Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;
.super Ljava/lang/Object;
.source "GestureConfiguration_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private final adjustmentsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sensorConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;",
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
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;->adjustmentsProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;->sensorConfigurationProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;",
            ">;)",
            "Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/util/List;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;",
            "Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;",
            ")",
            "Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;-><init>(Ljava/util/List;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;->adjustmentsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;->sensorConfigurationProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    invoke-static {v0, p0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;->newInstance(Ljava/util/List;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration_Factory;->get()Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    move-result-object p0

    return-object p0
.end method
