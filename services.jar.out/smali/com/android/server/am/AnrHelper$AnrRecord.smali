.class Lcom/android/server/am/AnrHelper$AnrRecord;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AnrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnrRecord"
.end annotation


# instance fields
.field final mAboveSystem:Z

.field final mActivityShortComponentName:Ljava/lang/String;

.field final mAnnotation:Ljava/lang/String;

.field final mApp:Lcom/android/server/am/ProcessRecord;

.field final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field final mParentProcess:Lcom/android/server/wm/WindowProcessController;

.field final mParentShortComponentName:Ljava/lang/String;

.field final mTimestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAnnotation:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    iput-boolean p6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    return-void
.end method


# virtual methods
.method appNotResponding(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    iget-object v7, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAnnotation:Ljava/lang/String;

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessErrorStateRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;Z)V

    return-void
.end method
