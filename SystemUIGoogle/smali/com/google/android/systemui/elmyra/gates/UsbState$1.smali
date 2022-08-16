.class public final Lcom/google/android/systemui/elmyra/gates/UsbState$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/UsbState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/UsbState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/UsbState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/UsbState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/UsbState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "connected"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/UsbState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/UsbState;

    iget-boolean p2, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbConnected:Z

    if-eq p1, p2, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbConnected:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/TransientGate;->block()V

    :cond_0
    return-void
.end method
