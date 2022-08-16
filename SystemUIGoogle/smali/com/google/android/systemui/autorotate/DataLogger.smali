.class public final Lcom/google/android/systemui/autorotate/DataLogger;
.super Ljava/lang/Object;
.source "DataLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/autorotate/DataLogger$StatsPullAtomCallbackImpl;
    }
.end annotation


# instance fields
.field public mDataQueue:Ljava/util/LinkedList;

.field public mLastPullTimeNanos:J

.field public mStatsManager:Landroid/app/StatsManager;


# direct methods
.method public constructor <init>(Landroid/app/StatsManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mDataQueue:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mLastPullTimeNanos:J

    iput-object p1, p0, Lcom/google/android/systemui/autorotate/DataLogger;->mStatsManager:Landroid/app/StatsManager;

    return-void
.end method
