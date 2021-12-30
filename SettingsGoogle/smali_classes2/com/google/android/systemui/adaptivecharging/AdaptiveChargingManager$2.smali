.class Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;
.super Ljava/lang/Object;
.source "AdaptiveChargingManager.java"

# interfaces
.implements Lvendor/google/google_battery/V1_0/IGoogleBattery$getChargingStageAndDeadlineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

.field final synthetic val$deathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field final synthetic val$googleBattery:Lvendor/google/google_battery/V1_1/IGoogleBattery;

.field final synthetic val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->this$0:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    iput-object p2, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    iput-object p3, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$googleBattery:Lvendor/google/google_battery/V1_1/IGoogleBattery;

    iput-object p4, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$deathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(BLjava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChargingStageDeadlineCallback result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stage: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", seconds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveChargingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-interface {p1, p2, p3}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onReceiveStatus(Ljava/lang/String;I)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->this$0:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    iget-object p2, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$googleBattery:Lvendor/google/google_battery/V1_1/IGoogleBattery;

    iget-object p3, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$deathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    invoke-static {p1, p2, p3}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->access$100(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;Lvendor/google/google_battery/V1_1/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    iget-object p0, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-interface {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    return-void
.end method
