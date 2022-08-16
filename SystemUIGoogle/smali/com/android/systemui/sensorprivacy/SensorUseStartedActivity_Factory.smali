.class public final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;
.super Ljava/lang/Object;
.source "SensorUseStartedActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final bgHandlerProvider:Ljavax/inject/Provider;

.field public final keyguardDismissUtilProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final sensorPrivacyControllerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->sensorPrivacyControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->sensorPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;-><init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Landroid/os/Handler;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->sensorPrivacyControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    new-instance p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    new-instance v3, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
