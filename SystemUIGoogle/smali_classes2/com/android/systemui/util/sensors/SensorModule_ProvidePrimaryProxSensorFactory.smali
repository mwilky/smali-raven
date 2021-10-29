.class public final Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;
.super Ljava/lang/Object;
.source "SensorModule_ProvidePrimaryProxSensorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/sensors/ThresholdSensor;",
        ">;"
    }
.end annotation


# instance fields
.field private final sensorManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final thresholdSensorBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
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
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/hardware/SensorManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;",
            ">;)",
            "Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providePrimaryProxSensor(Landroid/hardware/SensorManager;Ljava/lang/Object;)Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 0

    check-cast p1, Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;

    invoke-static {p0, p1}, Lcom/android/systemui/util/sensors/SensorModule;->providePrimaryProxSensor(Landroid/hardware/SensorManager;Lcom/android/systemui/util/sensors/ThresholdSensorImpl$Builder;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/sensors/ThresholdSensor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/sensors/ThresholdSensor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->sensorManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->thresholdSensorBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->providePrimaryProxSensor(Landroid/hardware/SensorManager;Ljava/lang/Object;)Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/SensorModule_ProvidePrimaryProxSensorFactory;->get()Lcom/android/systemui/util/sensors/ThresholdSensor;

    move-result-object p0

    return-object p0
.end method
