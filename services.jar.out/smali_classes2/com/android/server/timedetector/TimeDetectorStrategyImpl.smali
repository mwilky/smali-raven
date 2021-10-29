.class public final Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "time_detector"

.field static final MAX_UTC_TIME_AGE_MILLIS:J = 0x5265c00L

.field private static final SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TELEPHONY_BUCKET_COUNT:I = 0x18

.field static final TELEPHONY_BUCKET_SIZE_MILLIS:I = 0x36ee80

.field private static final TELEPHONY_INVALID_SCORE:I = -0x1


# instance fields
.field private final mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

.field private mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/time/ExternalTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timedetector/GnssTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timedetector/NetworkTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Landroid/app/timedetector/TelephonyTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeChangesLog:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$gYSS8zrM-Lu8-IJuPo5HO8R9lrc(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->handleAutoTimeConfigChanged()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    invoke-interface {v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;
    .locals 2

    new-instance v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/timedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)V

    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-direct {v1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;)V

    return-object v1
.end method

.method private doAutoTimeDetection(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoOriginPriorities()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_a

    aget v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, ", detectionReason="

    if-ne v3, v6, :cond_2

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good telephony suggestion., bestTelephonySuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good network suggestion., networkSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    if-ne v3, v6, :cond_6

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/timedetector/GnssTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good gnss suggestion., gnssTimeSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5
    goto :goto_1

    :cond_6
    const/4 v6, 0x5

    if-ne v3, v6, :cond_8

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/app/time/ExternalTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good external suggestion., externalTimeSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_7
    goto :goto_1

    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown or unsupported origin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": Skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "time_detector"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v4, :cond_9

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    return-void

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 10

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v5, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/timedetector/TelephonyTimeSuggestion;

    const-string v7, "time_detector"

    if-nez v6, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly null for slotIndex. slotIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly empty.  candidateSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    nop

    invoke-static {v0, v1, v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_4

    if-ge v3, v7, :cond_3

    goto :goto_1

    :cond_3
    if-ne v3, v7, :cond_5

    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v8

    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v9

    if-ge v8, v9, :cond_5

    move-object v2, v6

    goto :goto_2

    :cond_4
    :goto_1
    move-object v2, v6

    move v3, v7

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method private findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .locals 6

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/time/ExternalTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method private findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;
    .locals 6

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/GnssTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/timedetector/GnssTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method private findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 6

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z

    move-result v5

    if-nez v5, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method private declared-synchronized handleAutoTimeConfigChanged()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "Auto time zone detection config changed."

    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isOriginAutomatic(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I
    .locals 7

    invoke-virtual {p2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing suggestion found to be invalid elapsedRealtimeMillis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", timeSuggestion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "time_detector"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v3

    sub-long v3, p0, v3

    const-wide/32 v5, 0x36ee80

    div-long v5, v3, v5

    long-to-int v1, v5

    const/16 v5, 0x18

    if-lt v1, v5, :cond_1

    return v2

    :cond_1
    rsub-int/lit8 v2, v1, 0x18

    return v2
.end method

.method private setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->acquireWakeLock()V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    throw v1
.end method

.method private setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v5

    iget-object v6, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v6

    const-string v8, " cause="

    if-eqz v5, :cond_0

    iget-object v9, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    if-eqz v9, :cond_0

    invoke-static {v9, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v9

    sub-long v11, v9, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/16 v13, 0x7d0

    cmp-long v13, v11, v13

    if-lez v13, :cond_0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " expectedTimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " actualTimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "time_detector"

    invoke-static {v14, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v9

    sub-long v11, v9, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v13}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockUpdateThresholdMillis()I

    move-result v13

    int-to-long v13, v13

    cmp-long v15, v11, v13

    const/16 v16, 0x1

    if-gez v15, :cond_1

    return v16

    :cond_1
    iget-object v15, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v15, v9, v10}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setSystemClock(J)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    const-string v5, "Set system clock using time="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " elapsedRealtimeMillis="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " (old) actualSystemClockMillis="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " newSystemClockMillis="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v8, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v8

    if-eqz v8, :cond_2

    iput-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    :goto_0
    return v16
.end method

.method private storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "time_detector"

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/TimestampedValue;->referenceTimeDifference(Landroid/os/TimestampedValue;Landroid/os/TimestampedValue;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Out of order telephony suggestion received. referenceTimeDifference="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " previousSuggestion="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " suggestion="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Previous suggestion is null or has a null time. previousSuggestion="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", suggestion="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    return v3
.end method

.method private validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private validateSuggestionAgainstLowerBound(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suggestion points to time before lower bound, skipping it. suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", lower bound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time_detector"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "time_detector"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggested time value is null. suggestion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New reference time is in the future? Ignoring. elapsedRealtimeMillis="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", suggestion="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static validateSuggestionUtcTime(JLandroid/os/TimestampedValue;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    cmp-long v2, v0, p0

    const/4 v3, 0x0

    if-lez v2, :cond_0

    return v3

    :cond_0
    sub-long v4, p0, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "TimeDetectorStrategy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastAutoSystemClockTimeSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.isAutoTimeDetectionEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.elapsedRealtimeMillis()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.systemClockMillis()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.systemClockUpdateThresholdMillis()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockUpdateThresholdMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object v0

    const-string v1, "mEnvironment.autoTimeLowerBound()=%s(%s)\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoOriginPriorities()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    sget-object v2, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    const-string v2, ","

    const-string v3, "["

    const-string v4, "]"

    invoke-static {v2, v3, v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnvironment.autoOriginPriorities()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Time change log:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Telephony suggestion history:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Network suggestion history:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Gnss suggestion history:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "External suggestion history:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findLatestValidExternalSuggestionForTests()Landroid/app/time/ExternalTimeSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findLatestValidGnssSuggestionForTests()Landroid/app/timedetector/GnssTimeSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findLatestValidNetworkSuggestionForTests()Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->configurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getLatestExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/GnssTimeSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TelephonyTimeSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/time/ExternalTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/timedetector/GnssTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GNSS time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/timedetector/ManualTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manual time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New network time suggested. timeSuggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUtcTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New telephony time suggested. timeSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
