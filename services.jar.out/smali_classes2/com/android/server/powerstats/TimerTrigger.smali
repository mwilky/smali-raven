.class public final Lcom/android/server/powerstats/TimerTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "TimerTrigger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_PERIOD_MS_HIGH_FREQUENCY:J = 0x1d4c0L

.field private static final LOG_PERIOD_MS_LOW_FREQUENCY:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLogDataHighFrequency:Ljava/lang/Runnable;

.field private mLogDataLowFrequency:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/powerstats/TimerTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/TimerTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    new-instance v0, Lcom/android/server/powerstats/TimerTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/TimerTrigger$1;-><init>(Lcom/android/server/powerstats/TimerTrigger;)V

    iput-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataLowFrequency:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/powerstats/TimerTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/server/powerstats/TimerTrigger$2;-><init>(Lcom/android/server/powerstats/TimerTrigger;)V

    iput-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataHighFrequency:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataLowFrequency:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataHighFrequency:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/powerstats/TimerTrigger;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataLowFrequency:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/powerstats/TimerTrigger;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/powerstats/TimerTrigger;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger;->mLogDataHighFrequency:Ljava/lang/Runnable;

    return-object v0
.end method
