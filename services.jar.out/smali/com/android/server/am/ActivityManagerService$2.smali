.class Lcom/android/server/am/ActivityManagerService$2;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .locals 0

    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .locals 0

    return-void
.end method

.method public onActivityLaunched([BI)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->onActivityLaunched()V

    return-void
.end method

.method public onIntentFailed()V
    .locals 0

    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .locals 0

    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .locals 0

    return-void
.end method
