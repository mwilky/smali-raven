.class Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;
.super Ljava/lang/Thread;
.source "DynamicCodeLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DynamicCodeLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditWatchingThread"
.end annotation


# instance fields
.field private final mParams:Landroid/app/job/JobParameters;

.field final synthetic this$0:Lcom/android/server/pm/DynamicCodeLoggingService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/DynamicCodeLoggingService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    const-string p1, "DynamicCodeLoggingService_AuditWatchingJob"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method

.method private processAuditEvents()Z
    .locals 13

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [I

    const-string v2, "auditd"

    invoke-static {v2}, Landroid/util/EventLog;->getTagCode(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    aget v2, v1, v3

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$000()Lcom/android/server/pm/dex/DynamicCodeLogger;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v4}, Landroid/util/EventLog;->readEvents([ILjava/util/Collection;)V

    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$300()Ljava/util/regex/Pattern;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    invoke-static {v7}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$400(Lcom/android/server/pm/DynamicCodeLoggingService;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Stopping AuditWatchingJob run at scheduler request"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/EventLog$Event;

    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Ljava/lang/String;

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    const-string v11, "type=1400 "

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    :cond_6
    invoke-virtual {v2, v8, v11}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordNative(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/android/server/pm/DynamicCodeLoggingService;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuditWatchingJob failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->processAuditEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->this$0:Lcom/android/server/pm/DynamicCodeLoggingService;

    iget-object v1, p0, Lcom/android/server/pm/DynamicCodeLoggingService$AuditWatchingThread;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/DynamicCodeLoggingService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method
