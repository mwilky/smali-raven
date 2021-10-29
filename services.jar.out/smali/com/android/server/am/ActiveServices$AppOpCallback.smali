.class final Lcom/android/server/am/ActiveServices$AppOpCallback;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppOpCallback"
.end annotation


# static fields
.field private static final LOGGED_AP_OPS:[I


# instance fields
.field private final mAcceptedOps:Landroid/util/SparseIntArray;

.field private final mAppOpModes:Landroid/util/SparseIntArray;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCounterLock:Ljava/lang/Object;

.field private mDestroyed:Z

.field private mNumFgs:I

.field private final mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

.field private final mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

.field private final mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field private final mRejectedOps:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1b
        0x1a
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$1;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$2;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCountIfNeeded(III)V

    return-void
.end method

.method private incrementOpCount(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, 0x1

    if-gez v2, :cond_1

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->setValueAt(II)V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private incrementOpCountIfNeeded(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isNotTop()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCount(IZ)V

    :cond_1
    return-void
.end method

.method private isNotTop()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logFinalValues()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    move v11, v5

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    move v12, v5

    if-gtz v11, :cond_0

    if-lez v12, :cond_1

    :cond_0
    const/16 v5, 0x100

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ActiveServices$AppOpCallback;->modeToEnum(I)I

    move-result v8

    move v7, v4

    move v9, v11

    move v10, v12

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static modeToEnum(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method isObsoleteLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    return v0
.end method

.method registerLocked()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager"

    const-string v1, "Trying to register on a stale AppOpCallback."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_1
    return-void
.end method

.method unregisterLocked()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    if-gtz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->logFinalValues()V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    :cond_0
    return-void
.end method
