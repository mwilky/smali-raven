.class public final Lcom/google/android/systemui/elmyra/gates/ChargingState$1;
.super Landroid/content/BroadcastReceiver;
.source "ChargingState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/ChargingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/ChargingState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/ChargingState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/ChargingState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/ChargingState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/ChargingState;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/TransientGate;->block()V

    return-void
.end method
