.class public abstract Lcom/android/keyguard/clock/ClockModule;
.super Ljava/lang/Object;
.source "ClockModule.java"


# direct methods
.method public static provideClockInfoList(Lcom/android/keyguard/clock/ClockManager;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/clock/ClockManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/keyguard/clock/ClockInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager;->getClockInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
