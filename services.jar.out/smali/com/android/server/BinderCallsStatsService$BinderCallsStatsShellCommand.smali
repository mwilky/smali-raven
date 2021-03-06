.class Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderCallsStatsShellCommand"
.end annotation


# instance fields
.field private final mPrintWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/BinderCallsStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public getOutPrintWriter()Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "--enable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    const-string v2, "--disable-detailed-tracking"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "--enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :sswitch_3
    const-string v2, "--dump-worksource-provider"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_4
    const-string v2, "--work-source-uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto :goto_1

    :sswitch_5
    const-string v2, "--disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "--no-sampling"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_7
    const-string v2, "--reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :goto_0
    move v2, v1

    :goto_1
    const-string/jumbo v5, "persist.sys.binder_calls_detailed_tracking"

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v5}, Lcom/android/server/BinderCallsStatsService;->access$000(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/os/BinderCallsStats;->recordAllCallsForWorkSourceUid(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid UID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->access$000(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->access$100(Lcom/android/server/BinderCallsStatsService;)Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    goto :goto_2

    :pswitch_2
    const-string v1, ""

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->access$000(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string v1, "Detailed tracking disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v1, "1"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->access$000(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    const-string v1, "Detailed tracking enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->access$000(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    goto :goto_2

    :pswitch_5
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_2

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-static {v1}, Lcom/android/server/BinderCallsStatsService;->access$000(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_2

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->this$0:Lcom/android/server/BinderCallsStatsService;

    invoke-virtual {v1}, Lcom/android/server/BinderCallsStatsService;->reset()V

    const-string v1, "binder_calls_stats reset."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_2
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60476451 -> :sswitch_7
        -0x4cd89b2d -> :sswitch_6
        -0x49c576b8 -> :sswitch_5
        -0x1fdb9dc6 -> :sswitch_4
        -0x6594f87 -> :sswitch_3
        0x41a27323 -> :sswitch_2
        0x565319ef -> :sswitch_1
        0x79b4630a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "binder_calls_stats commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --reset: Reset stats"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --enable: Enable tracking binder calls"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --disable: Disables tracking binder calls"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --no-sampling: Tracks all calls"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  --work-source-uid <UID>: Track all binder calls from the UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
