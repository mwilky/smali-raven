.class public final synthetic Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppProfiler$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Predicate;

    invoke-static {p0, p1}, Lcom/android/server/am/AppProfiler;->$r8$lambda$yGYF27QwdpoQJWSdBkqjKGIRCOA(Ljava/util/function/Predicate;Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p0

    return p0
.end method
