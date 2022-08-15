.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$1:Landroid/os/Debug$MemoryInfo;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lcom/android/server/am/ProcessProfileRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/os/Debug$MemoryInfo;JLcom/android/server/am/ProcessProfileRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Debug$MemoryInfo;

    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/am/ProcessProfileRecord;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Debug$MemoryInfo;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/am/ProcessProfileRecord;

    move-object v5, p1

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$2WweV4ZlzWdWugjgv4Qek4UBmVU(Lcom/android/server/am/ProcessRecord;Landroid/os/Debug$MemoryInfo;JLcom/android/server/am/ProcessProfileRecord;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V

    return-void
.end method
