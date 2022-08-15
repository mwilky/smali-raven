.class public final Lcom/android/server/am/ProcessStatsService$LocalService;
.super Lcom/android/internal/app/procstats/ProcessStatsInternal;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$LocalService;->this$0:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessStatsInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ProcessStatsService;Lcom/android/server/am/ProcessStatsService$LocalService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService$LocalService;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    return-void
.end method


# virtual methods
.method public getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/am/ProcessStatsService$LocalService;->this$0:Lcom/android/server/am/ProcessStatsService;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->-$$Nest$mgetUidProcStateStatsOverTime(Lcom/android/server/am/ProcessStatsService;J)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method
