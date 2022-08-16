.class public final Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;
.super Ljava/lang/Object;
.source "FeatureFlagsRelease_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final resourcesProvider:Ljavax/inject/Provider;

.field public final systemPropertiesProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->resourcesProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->systemPropertiesProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->systemPropertiesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DeviceConfigProxy;

    new-instance v2, Lcom/android/systemui/classifier/ProximityClassifier;

    check-cast v0, Lcom/android/systemui/classifier/DistanceClassifier;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/classifier/ProximityClassifier;-><init>(Lcom/android/systemui/classifier/DistanceClassifier;Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/util/DeviceConfigProxy;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->systemPropertiesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/flags/SystemPropertiesHelper;

    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    new-instance v2, Lcom/android/systemui/flags/FeatureFlagsRelease;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/flags/FeatureFlagsRelease;-><init>(Landroid/content/res/Resources;Lcom/android/systemui/flags/SystemPropertiesHelper;Lcom/android/systemui/dump/DumpManager;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->systemPropertiesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/UiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/flags/FeatureFlagsRelease_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance v2, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;

    invoke-direct {v2, v0, p0, v1}, Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
