.class final Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$1;
.super Ljava/lang/Object;
.source "SensorUseStartedActivity.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSensorBlockedChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-static {p1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->access$getSensorPrivacyController$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-static {p1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->access$getSensorPrivacyController$p(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->isSensorBlocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$1;->this$0:Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
