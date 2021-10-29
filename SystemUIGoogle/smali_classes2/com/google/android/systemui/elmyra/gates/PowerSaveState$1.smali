.class Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/PowerSaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/PowerSaveState;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/PowerSaveState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/PowerSaveState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/PowerSaveState;

    invoke-static {p1}, Lcom/google/android/systemui/elmyra/gates/PowerSaveState;->access$000(Lcom/google/android/systemui/elmyra/gates/PowerSaveState;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerSaveState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/PowerSaveState;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
