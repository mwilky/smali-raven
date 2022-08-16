.class public final synthetic Lcom/google/android/systemui/autorotate/AutorotateDataService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/autorotate/AutorotateDataService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/autorotate/AutorotateDataService$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/autorotate/AutorotateDataService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string v0, "log_raw_sensor_data"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "log_rotation_preindication"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/autorotate/AutorotateDataService;->readFlagsToControlSensorLogging()V

    :cond_1
    return-void
.end method
