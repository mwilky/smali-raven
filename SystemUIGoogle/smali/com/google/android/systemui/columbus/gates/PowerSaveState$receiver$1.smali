.class public final Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/gates/PowerSaveState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/gates/PowerSaveState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/gates/PowerSaveState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/PowerSaveState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerSaveState$receiver$1;->this$0:Lcom/google/android/systemui/columbus/gates/PowerSaveState;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/PowerSaveState;->refreshStatus()V

    return-void
.end method
