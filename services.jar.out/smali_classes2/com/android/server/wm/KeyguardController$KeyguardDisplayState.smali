.class Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardDisplayState"
.end annotation


# instance fields
.field private mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mDisplayId:I

.field private mOccluded:Z

.field private mRequestDismissKeyguard:Z

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field private mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    iput-object p3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    return-object v0
.end method

.method private getRootTaskForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;
    .locals 1

    sget-object v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/KeyguardController$KeyguardDisplayState$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getRootTaskForControllingOccluding$0(Lcom/android/server/wm/Task;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TurnScreenOnActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method onRemoved()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    return-void
.end method

.method updateVisibility(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V
    .locals 11

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    iput-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->getRootTaskForControllingOccluding(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_0
    const/4 v7, 0x1

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v8

    if-eqz v8, :cond_1

    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v8

    if-eqz v8, :cond_2

    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v8

    if-eqz v8, :cond_3

    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_3
    if-nez v8, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v9, v10, :cond_4

    invoke-virtual {p1, v7, v3}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_0

    :cond_4
    move v9, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v9, v7

    :goto_1
    move v5, v9

    iget v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v9, :cond_7

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->canShowWithInsecureKeyguard()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v7

    goto :goto_2

    :cond_6
    move v9, v3

    :goto_2
    or-int/2addr v5, v9

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isShowingDreamLw()Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_8

    move v8, v7

    goto :goto_3

    :cond_8
    move v8, v3

    :goto_3
    if-nez v8, :cond_a

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    move v9, v3

    goto :goto_5

    :cond_a
    :goto_4
    move v9, v7

    :goto_5
    iput-boolean v9, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    iget-object v10, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v10, :cond_b

    if-nez v9, :cond_b

    if-eqz v10, :cond_b

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v9

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$500(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_6

    :cond_b
    move v7, v3

    :goto_6
    iput-boolean v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v7, v2, :cond_d

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    if-nez v7, :cond_c

    if-eqz v5, :cond_d

    :cond_c
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$700(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v7

    const-string v9, "handleTurnScreenOn"

    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopTurnScreenOnActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    :cond_d
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v0, v3, :cond_e

    iget v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    iget-object v7, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mTopOccludesActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, v3, v7}, Lcom/android/server/wm/KeyguardController;->access$800(Lcom/android/server/wm/KeyguardController;ILcom/android/server/wm/ActivityRecord;)V

    :cond_e
    return-void
.end method
