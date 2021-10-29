.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;,
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "time_zone_detector"

.field public static final TELEPHONY_SCORE_HIGH:I = 0x3

.field public static final TELEPHONY_SCORE_HIGHEST:I = 0x4

.field public static final TELEPHONY_SCORE_LOW:I = 0x1

.field public static final TELEPHONY_SCORE_MEDIUM:I = 0x2

.field public static final TELEPHONY_SCORE_NONE:I = 0x0

.field public static final TELEPHONY_SCORE_USAGE_THRESHOLD:I = 0x2


# instance fields
.field private mConfigChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDumpables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

.field private mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeZoneChangesLog:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$mR7epgjfM8k91QGuE8lIRCCEHek(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->handleConfigChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mConfigChangeListeners:Ljava/util/List;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDumpables:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method

.method private clearGeolocationSuggestionIfNeeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledBehavior()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    const-string v4, "clearGeolocationSuggestionIfNeeded: Cleared latest Geolocation suggestion."

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    const-string v3, "clearGeolocationSuggestionIfNeeded()"

    invoke-direct {p0, v1, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .locals 2

    new-instance v0, Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/timezonedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V

    return-object v1
.end method

.method private doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledBehavior()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doGeolocationTimeZoneDetection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doGeolocationTimeZoneDetection(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private doTelephonyTimeZoneDetection(Ljava/lang/String;)V
    .locals 5

    nop

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty zone suggestion scored higher than expected. This is an error: bestTelephonySuggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " detectionReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "time_zone_detector"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found good suggestion., bestTelephonySuggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", detectionReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-le v3, v4, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v4

    if-ge v3, v4, :cond_3

    move-object v0, v2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private declared-synchronized handleConfigChanged()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->clearGeolocationSuggestionIfNeeded()V

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_0
    const/4 v0, 0x4

    :goto_1
    return v0
.end method

.method private setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setDeviceTimeZone(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set device time zone., currentZoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newZoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addDumpable(Lcom/android/server/timezonedetector/Dumpable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDumpables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "TimeZoneDetectorStrategy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEnvironment.getCurrentUserId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnvironment.getConfiguration(currentUserId)="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnvironment.isDeviceTimeZoneInitialized()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->isDeviceTimeZoneInitialized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEnvironment.getDeviceTimeZone()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Time zone change log:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v2, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Manual suggestion history:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Geolocation suggestion history:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v2, "Telephony suggestion history:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDumpables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/timezonedetector/Dumpable;

    invoke-interface {v3, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

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

.method public declared-synchronized generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserId()I

    move-result v0

    nop

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    :goto_0
    move-object v7, v2

    new-instance v3, Lcom/android/server/timezonedetector/OrdinalGenerator;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

    invoke-direct {v2}, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;-><init>()V

    invoke-direct {v3, v2}, Lcom/android/server/timezonedetector/OrdinalGenerator;-><init>(Ljava/util/function/Function;)V

    nop

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledBehavior()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New geolocation time zone suggested. suggestion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const-string v2, "time_zone_detector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual suggestion received but user != current user, userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " suggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual time suggestion received: suggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/time/TimeZoneCapabilities;->getSuggestManualTimeZoneCapability()I

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_1

    const-string v6, "time_zone_detector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User does not have the capability needed to set the time zone manually, capabilities="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", timeZoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", cause="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I

    move-result v2

    new-instance v3, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    invoke-direct {v3, p1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V

    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getGeoDetectionEnabledBehavior()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New telephony time zone suggested. suggestion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    nop

    invoke-virtual {v1, v2, p2}, Landroid/app/time/TimeZoneCapabilities;->tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const/4 v4, 0x0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v4, p1, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration changed: oldConfiguration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", newConfiguration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v5, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
