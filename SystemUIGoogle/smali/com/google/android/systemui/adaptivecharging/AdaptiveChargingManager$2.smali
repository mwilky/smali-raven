.class public final Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;
.super Ljava/lang/Object;
.source "AdaptiveChargingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

.field public final synthetic val$deathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field public final synthetic val$googleBattery:Lvendor/google/google_battery/V1_2/IGoogleBattery;

.field public final synthetic val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;Lvendor/google/google_battery/V1_2/IGoogleBattery;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->this$0:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    iput-object p2, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    iput-object p3, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$googleBattery:Lvendor/google/google_battery/V1_2/IGoogleBattery;

    iput-object p4, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$deathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValues(BLjava/lang/String;I)V
    .locals 2

    sget-boolean v0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->DEBUG:Z

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

    const-string v1, "AdaptiveChargingManager"

    invoke-static {v0, p3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-interface {p1, p3, p2}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onReceiveStatus(ILjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->this$0:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    iget-object p2, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$googleBattery:Lvendor/google/google_battery/V1_2/IGoogleBattery;

    iget-object p3, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$deathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->destroyHalInterface(Lvendor/google/google_battery/V1_2/IGoogleBattery;Landroid/os/IHwBinder$DeathRecipient;)V

    iget-object p0, p0, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$2;->val$receiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-interface {p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;->onDestroyInterface()V

    return-void
.end method
