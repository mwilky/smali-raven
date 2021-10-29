.class Lcom/android/server/BinderCallsStatsService$LifeCycle$1;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$CallStatsObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BinderCallsStatsService$LifeCycle;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BinderCallsStatsService$LifeCycle;

.field final synthetic val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;


# direct methods
.method constructor <init>(Lcom/android/server/BinderCallsStatsService$LifeCycle;Landroid/os/BatteryStatsInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->this$0:Lcom/android/server/BinderCallsStatsService$LifeCycle;

    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public noteBinderThreadNativeIds([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {v0, p1}, Landroid/os/BatteryStatsInternal;->noteBinderThreadNativeIds([I)V

    return-void
.end method

.method public noteCallStats(IJLjava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Collection<",
            "Lcom/android/internal/os/BinderCallsStats$CallStat;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;->val$batteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/BatteryStatsInternal;->noteBinderCallStats(IJLjava/util/Collection;)V

    return-void
.end method
