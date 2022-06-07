.class public final synthetic Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

.field public final synthetic f$1:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    iput-object p2, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/power/AdaptiveChargingNotification;

    iget-object p0, p0, Lcom/google/android/systemui/power/AdaptiveChargingNotification$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-static {v0, p0}, Lcom/google/android/systemui/power/AdaptiveChargingNotification;->$r8$lambda$Z1OVN2a4z2QKpsyFt-GHIuNItPQ(Lcom/google/android/systemui/power/AdaptiveChargingNotification;Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    return-void
.end method
