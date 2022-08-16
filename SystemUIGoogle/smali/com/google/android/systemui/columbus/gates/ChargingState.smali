.class public final Lcom/google/android/systemui/columbus/gates/ChargingState;
.super Lcom/google/android/systemui/columbus/gates/TransientGate;
.source "ChargingState.kt"


# instance fields
.field public final gateDuration:J

.field public final powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-wide p3, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->gateDuration:J

    new-instance p1, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;-><init>(Lcom/google/android/systemui/columbus/gates/ChargingState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/Gate;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->powerReceiver:Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
