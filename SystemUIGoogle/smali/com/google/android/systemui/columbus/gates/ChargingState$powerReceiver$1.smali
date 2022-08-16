.class public final Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "ChargingState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/ChargingState;-><init>(Landroid/content/Context;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/ChargingState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/ChargingState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/ChargingState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/ChargingState;

    iget-wide p1, p0, Lcom/google/android/systemui/columbus/gates/ChargingState;->gateDuration:J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;->blockForMillis(J)V

    return-void
.end method
