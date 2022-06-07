.class public Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;
.super Ljava/lang/Object;
.source "BcSmartspaceCardLogger.java"


# static fields
.field private static final IS_VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "StatsLog"

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->IS_VERBOSE:Z

    return-void
.end method

.method public static log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;)V
    .locals 14

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->getSubcardInfo()Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggerUtil;->convertSubcardInfoToBytes(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;)[B

    move-result-object v13

    invoke-interface {p0}, Lcom/google/android/systemui/smartspace/EventEnum;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->getInstanceId()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->getDisplaySurface()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->getRank()I

    move-result v6

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->getCardinality()I

    move-result v7

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->getFeatureType()I

    move-result v8

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->getReceivedLatency()I

    move-result v12

    const/16 v1, 0x160

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v13}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIIIII[B)V

    sget-boolean v0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLogger;->IS_VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceCardLoggingInfo;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p0

    const-string p0, "\nLogged Smartspace event(%s), info(%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatsLog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
