.class public Lcom/android/server/wm/LockTaskController;
.super Ljava/lang/Object;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LockTaskController$LockTaskToken;
    }
.end annotation


# static fields
.field static final LOCK_TASK_AUTH_ALLOWLISTED:I = 0x3

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field private static final LOCK_TASK_TAG:Ljava/lang/String; = "Lock-to-App"

.field private static final STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STATUS_BAR_MASK_LOCKED:I = 0x7a60000

.field static final STATUS_BAR_MASK_PINNED:I = 0x69f0000

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private final mHandler:Landroid/os/Handler;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockTaskFeatures:Landroid/util/SparseIntArray;

.field private volatile mLockTaskModeState:I

.field private final mLockTaskModeTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockTaskPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDisableFromDismiss:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mToken:Landroid/os/IBinder;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x60000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;Lcom/android/server/wm/TaskChangeNotificationController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/LockTaskController$LockTaskToken;-><init>(Lcom/android/server/wm/LockTaskController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/LockTaskController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/wm/LockTaskController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method private getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    nop

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "ActivityTaskManager"

    const-string v1, "warning: no DEVICE_POLICY_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    return-object v0
.end method

.method private getLockTaskFeaturesForUser(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    nop

    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    const-string v0, "StatusBarManager"

    const-string v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0

    :cond_0
    return-object v0
.end method

.method private isBlockingInTaskEnabled(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEmergencyCallIntent(Landroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method private isKeyguardAllowed(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isActivityTypeRecents()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->isRecentsAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/android/server/wm/LockTaskController;->isEmergencyCallIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isActivityTypeDream()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p4}, Lcom/android/server/wm/LockTaskController;->isTaskAuthAllowlisted(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isRecentsAllowed(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRootTask(Lcom/android/server/wm/Task;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isTaskAuthAllowlisted(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$activityBlockedFromFinish$0(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$activityBlockedFromFinish$1(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    if-eq p2, p0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lockKeyguardIfNeeded(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->shouldLockKeyguard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    :cond_0
    return-void
.end method

.method private lockTaskModeToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "PINNED"

    return-object v0

    :pswitch_1
    const-string v0, "LOCKED"

    return-object v0

    :pswitch_2
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private performStartLockTask(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V

    iput p3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyLockTaskModeChanged(I)V

    invoke-direct {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    invoke-direct {p0, p3, p2}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    invoke-interface {v0, v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private performStopLockTask(I)V
    .locals 5

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyLockTaskModeChanged(I)V

    :try_start_0
    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->lockKeyguardIfNeeded(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, p1}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    :cond_1
    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEnterExitToast(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->onLockTaskStateChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private removeLockedTask(Lcom/android/server/wm/Task;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x61334ede

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x39011dd1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v4, v7, v1

    invoke-static {v5, v6, v3, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/LockTaskController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method private setKeyguardState(II)V
    .locals 3

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const-string v1, "Lock-to-App"

    if-ne p1, v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->isKeyguardAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    iput p2, p0, Lcom/android/server/wm/LockTaskController;->mPendingDisableFromDismiss:I

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/LockTaskController$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/LockTaskController$1;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1, p2}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V
    .locals 11

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x38a0fc9e

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ActivityTaskManager"

    const-string v1, "setLockTaskMode: Attempt to start an unauthorized lock task."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v4, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/RecentTasks;->onLockTaskModeStateChanged(II)V

    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/LockTaskController;Landroid/content/Intent;Lcom/android/server/wm/Task;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x20ae1fcc

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v2

    aput-object v5, v8, v4

    invoke-static {v6, v7, v2, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v1, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    iget v1, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iput v1, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    :cond_6
    if-eqz p4, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_7

    move v10, v4

    goto :goto_0

    :cond_7
    move v10, v2

    :goto_0
    move-object v6, p1

    move-object v9, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_1

    :cond_8
    if-eqz p2, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x0

    iget-object v1, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    const/4 v8, 0x1

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    goto :goto_2

    :cond_9
    :goto_1
    nop

    :goto_2
    return-void
.end method

.method private setStatusBarState(II)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_0

    const-string v2, "Can\'t find StatusBarService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    const/high16 v2, 0x69f0000

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/LockTaskController;->getStatusBarDisableFlags(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/LockTaskController;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "Failed to set status bar flags"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private shouldLockKeyguard(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_to_app_exit_locked"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "127605586"

    aput-object v5, v4, v1

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, ""

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v4, 0x1

    if-ne p1, v3, :cond_1

    if-eq p1, v1, :cond_6

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isDelayLastActivityRemoval()Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v7, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;

    invoke-direct {v7, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v5, v7}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v2

    :goto_0
    if-eqz v7, :cond_4

    return v2

    :cond_4
    new-instance v8, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;

    invoke-direct {v8, p1, v6}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {v0, v8}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_1

    :cond_5
    move v8, v2

    :goto_1
    if-eqz v8, :cond_6

    return v2

    :cond_6
    const-string v2, "ActivityTaskManager"

    const-string v5, "Not finishing task in lock task mode"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    return v4

    :cond_7
    :goto_2
    return v2

    :cond_8
    :goto_3
    return v2
.end method

.method canMoveTaskToBack(Lcom/android/server/wm/Task;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->isRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method clearLockedTask(Lcom/android/server/wm/Task;)V
    .locals 2

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->performClearTaskLocked()V

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method clearLockedTasks(Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x12e7ffdd

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LockTaskController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->lockTaskModeToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskModeTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLockTaskPackages (userId:packages)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .locals 5

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p2, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_1
    nop

    if-eqz p2, :cond_4

    iget v2, p2, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_2

    :cond_4
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    :goto_2
    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    packed-switch v4, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x2

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move v3, v0

    goto :goto_5

    :pswitch_1
    const/4 v3, 0x4

    goto :goto_5

    :pswitch_2
    const/4 v3, 0x0

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x3

    goto :goto_4

    :cond_6
    nop

    :goto_4
    move v3, v0

    nop

    :goto_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getLockTaskModeState()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    return v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getStatusBarDisableFlags(I)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/high16 v0, 0x7ff0000

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    sget-object v3, Lcom/android/server/wm/LockTaskController;->STATUS_BAR_FLAG_MAP_LOCKED:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    not-int v3, v3

    and-int/2addr v0, v3

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    not-int v3, v3

    and-int/2addr v1, v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x7a60000

    and-int/2addr v0, v2

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method isActivityAllowed(ILjava/lang/String;I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->isBlockingInTaskEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    packed-switch p3, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/LockTaskController;->isPackageAllowlisted(ILjava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isBaseOfLockedTask(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z

    move-result v0

    return v0
.end method

.method isLockTaskModeViolation(Lcom/android/server/wm/Task;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->isTaskLocked(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v1, p1, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method isNewTaskLockTaskModeViolation(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolationInternal(Lcom/android/server/wm/WindowContainer;ILandroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method isPackageAllowlisted(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    :cond_1
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method isTaskLocked(Lcom/android/server/wm/Task;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$removeLockedTask$2$LockTaskController(Lcom/android/server/wm/Task;)V
    .locals 1

    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/LockTaskController;->performStopLockTask(I)V

    return-void
.end method

.method public synthetic lambda$setLockTaskMode$3$LockTaskController(Landroid/content/Intent;Lcom/android/server/wm/Task;I)V
    .locals 2

    nop

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/wm/LockTaskController;->performStartLockTask(Ljava/lang/String;II)V

    return-void
.end method

.method public synthetic lambda$updateLockTaskFeatures$4$LockTaskController(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setStatusBarState(II)V

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V

    :cond_0
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method showLockTaskToast()V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/LockTaskController;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->showPinningEscapeToast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to send pinning escape toast"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    iput p3, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    iget v3, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v3, v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x5386119e

    move-object v4, v0

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showScreenPinningRequest(I)V

    :cond_1
    return-void

    :cond_2
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v3, :cond_4

    if-eqz p2, :cond_3

    const-string v3, "Locking pinned"

    goto :goto_0

    :cond_3
    const-string v3, "Locking fully"

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x7e6cc2d8

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v3, v6, v1

    invoke-static {v4, v5, v1, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-eqz p2, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    const-string v1, "startLockTask"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    return-void
.end method

.method stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "stopAppPinning"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTasks(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "ActivityTaskManager"

    const-string v1, "Attempted to stop LockTask with isSystemCaller=true"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_5

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    if-eq p3, v0, :cond_4

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    if-nez v0, :cond_3

    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    if-ne p3, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uid, expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mLockTaskUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " effectiveUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    :goto_1
    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t stop LockTask for null task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method updateLockTaskFeatures(II)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/LockTaskController;->getLockTaskFeaturesForUser(I)I

    move-result v0

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskFeatures:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LockTaskController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method updateLockTaskPackages(I[Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ltz v1, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget v7, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v8, 0x3

    if-eq v7, v4, :cond_1

    iget v7, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move v7, v5

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v2

    :goto_2
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->setLockTaskAuth()V

    iget v9, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v9, v4, :cond_3

    iget v9, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v9, v8, :cond_2

    goto :goto_3

    :cond_2
    move v8, v5

    goto :goto_4

    :cond_3
    :goto_3
    move v8, v2

    :goto_4
    iget v9, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeState:I

    if-ne v9, v2, :cond_6

    iget v9, v6, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v9, p1, :cond_6

    if-eqz v7, :cond_6

    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v9, :cond_5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x6d05c606

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v5

    aput-object v10, v4, v2

    invoke-static {v11, v12, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-direct {p0, v6}, Lcom/android/server/wm/LockTaskController;->removeLockedTask(Lcom/android/server/wm/Task;)V

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->performClearTaskLocked()V

    const/4 v0, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    sget-object v6, Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/LockTaskController$$ExternalSyntheticLambda3;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/RootWindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_6

    :cond_8
    move-object v6, v3

    :goto_6
    iget-object v7, p0, Lcom/android/server/wm/LockTaskController;->mLockTaskModeTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    iget v7, v6, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-ne v7, v4, :cond_a

    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v4, :cond_9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x40e7c0ac

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v4, v9, v5

    invoke-static {v7, v8, v5, v3, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    const-string v3, "package updated"

    invoke-direct {p0, v6, v2, v3, v5}, Lcom/android/server/wm/LockTaskController;->setLockTaskMode(Lcom/android/server/wm/Task;ILjava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_a
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/android/server/wm/LockTaskController;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_b
    return-void
.end method
