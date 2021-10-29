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
.field final synthetic this$0:Lcom/google/android/systemui/columbus/gates/ChargingState;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/gates/ChargingState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/ChargingState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ChargingState$powerReceiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/ChargingState;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/gates/ChargingState;->access$getGateDuration$p(Lcom/google/android/systemui/columbus/gates/ChargingState;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/TransientGate;->blockForMillis(J)V

    return-void
.end method
