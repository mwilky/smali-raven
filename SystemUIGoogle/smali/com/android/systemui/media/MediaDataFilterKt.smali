.class public final Lcom/android/systemui/media/MediaDataFilterKt;
.super Ljava/lang/Object;
.source "MediaDataFilter.kt"


# static fields
.field private static final SMARTSPACE_MAX_AGE:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-string v2, "debug.sysui.smartspace_max_age"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/media/MediaDataFilterKt;->SMARTSPACE_MAX_AGE:J

    return-void
.end method

.method public static final getSMARTSPACE_MAX_AGE()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/media/MediaDataFilterKt;->SMARTSPACE_MAX_AGE:J

    return-wide v0
.end method

.method public static synthetic getSMARTSPACE_MAX_AGE$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method
