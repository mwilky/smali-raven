.class final Lcom/android/server/powerstats/PowerStatsService$BinderService;
.super Landroid/os/Binder;
.source "PowerStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/powerstats/PowerStatsService;Lcom/android/server/powerstats/PowerStatsService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsService$BinderService;-><init>(Lcom/android/server/powerstats/PowerStatsService;)V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$000(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$200(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerStats HAL is not initialized.  No data available."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    array-length v0, p3

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    aget-object v1, p3, v0

    const-string v2, "model"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$200(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeModelDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_2
    aget-object v1, p3, v0

    const-string v2, "meter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$200(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeMeterDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_3
    aget-object v0, p3, v0

    const-string v1, "residency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$200(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeResidencyDataToFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_4
    array-length v0, p3

    if-nez v0, :cond_5

    const-string v0, "PowerStatsService dumpsys: available PowerEntities"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->access$300(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->dumpsys([Landroid/hardware/power/stats/PowerEntity;Ljava/io/PrintWriter;)V

    const-string v1, "PowerStatsService dumpsys: available Channels"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v1}, Lcom/android/server/powerstats/PowerStatsService;->access$300(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->dumpsys([Landroid/hardware/power/stats/Channel;Ljava/io/PrintWriter;)V

    const-string v2, "PowerStatsService dumpsys: available EnergyConsumers"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsService$BinderService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v2}, Lcom/android/server/powerstats/PowerStatsService;->access$300(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->dumpsys([Landroid/hardware/power/stats/EnergyConsumer;Ljava/io/PrintWriter;)V

    :cond_5
    :goto_0
    return-void
.end method
