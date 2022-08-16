.class public final Lcom/google/android/systemui/elmyra/gates/ChargingState;
.super Lcom/google/android/systemui/elmyra/gates/TransientGate;
.source "ChargingState.java"


# instance fields
.field public final mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;-><init>(Landroid/content/Context;J)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/ChargingState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/ChargingState;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

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

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/Gate;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState;->mPowerReceiver:Lcom/google/android/systemui/elmyra/gates/ChargingState$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
