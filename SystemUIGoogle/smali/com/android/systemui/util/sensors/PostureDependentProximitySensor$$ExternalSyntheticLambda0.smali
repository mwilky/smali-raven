.class public final synthetic Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;

    return-void
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;

    iget v0, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->mDevicePosture:I

    invoke-virtual {p0}, Lcom/android/systemui/util/sensors/PostureDependentProximitySensor;->chooseSensors()V

    :goto_0
    return-void
.end method
