.class public Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->setMonitorBatteryLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;->this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;->this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method