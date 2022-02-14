.class final Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageCompatStateInfo"
.end annotation


# instance fields
.field mLastLoggedActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastLoggedState:I

.field final mVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mVisibleActivities:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;->mLastLoggedState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLogger$PackageCompatStateInfo;-><init>()V

    return-void
.end method
