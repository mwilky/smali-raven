.class public final Lcom/android/server/timedetector/ServiceConfigAccessor;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;,
        Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;,
        Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
    }
.end annotation


# static fields
.field public static final DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

.field public static final SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOCK:Ljava/lang/Object;

.field public static final TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

.field public static sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "SLOCK"
        }
    .end annotation
.end field


# instance fields
.field public final mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

.field public final mContext:Landroid/content/Context;

.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field public final mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

.field public final mSystemClockUpdateThresholdMillis:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    const-string v0, "time_detector_lower_bound_millis_override"

    const-string v1, "time_detector_origin_priorities_override"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;-><init>(Landroid/content/Context;Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier-IA;)V

    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    new-instance p1, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    invoke-direct {p1, v0, v2}, Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServerFlags;Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier-IA;)V

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    const-string p1, "ro.sys.time_detector_update_diff"

    const/16 v0, 0x7d0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mSystemClockUpdateThresholdMillis:I

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;
    .locals 2

    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServiceConfigAccessor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    :cond_0
    sget-object p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    return-void
.end method

.method public autoTimeLowerBound()Ljava/time/Instant;
    .locals 1

    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v0, "time_detector_lower_bound_millis_override"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/ServerFlags;->getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessor;->TIME_LOWER_BOUND_DEFAULT:Ljava/time/Instant;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Instant;

    return-object p0
.end method

.method public getOriginPriorities()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ServerFlagsOriginPrioritiesSupplier;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessor$ConfigOriginPrioritiesSupplier;

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    return-object p0
.end method

.method public systemClockUpdateThresholdMillis()I
    .locals 0

    iget p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor;->mSystemClockUpdateThresholdMillis:I

    return p0
.end method
