.class Lcom/android/server/pm/BackgroundDexOptService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundDexOptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$js:Landroid/app/job/JobScheduler;


# direct methods
.method constructor <init>(Landroid/app/job/JobScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$js:Landroid/app/job/JobScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$1;->val$js:Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$000()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x321

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/android/server/pm/BackgroundDexOptService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BackgroundDexOptService"

    const-string v1, "BootBgDexopt scheduled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
