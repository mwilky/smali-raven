.class public Lcom/android/server/am/ProcessStatsService$2;
.super Ljava/lang/Object;
.source "ProcessStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessStatsService;

.field public final synthetic val$totalTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessStatsService;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    iput-wide p2, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService$2;->this$0:Lcom/android/server/am/ProcessStatsService;

    iget-wide v1, p0, Lcom/android/server/am/ProcessStatsService$2;->val$totalTime:J

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->-$$Nest$mperformWriteState(Lcom/android/server/am/ProcessStatsService;J)V

    return-void
.end method
