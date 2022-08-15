.class public final synthetic Lcom/android/server/alarm/BatchingAlarmStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/android/server/alarm/BatchingAlarmStore$Batch;

    invoke-static {p1}, Lcom/android/server/alarm/BatchingAlarmStore;->$r8$lambda$C4B0m32nDPh6fLbATXI2H_fQ9GU(Lcom/android/server/alarm/BatchingAlarmStore$Batch;)J

    move-result-wide p0

    return-wide p0
.end method
