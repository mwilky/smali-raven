.class public Lcom/android/server/policy/SideFpsEventHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SideFpsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SideFpsEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SideFpsEventHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler$1;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->-$$Nest$fputmDialog(Lcom/android/server/policy/SideFpsEventHandler;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method
