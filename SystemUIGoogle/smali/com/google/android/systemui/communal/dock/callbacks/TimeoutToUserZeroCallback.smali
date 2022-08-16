.class public final Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;
.super Ljava/lang/Object;
.source "TimeoutToUserZeroCallback.java"

# interfaces
.implements Lcom/android/systemui/util/condition/Monitor$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCancelTimerRunnable:Ljava/lang/Runnable;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mDocked:Z

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mOnTimeout:Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;

.field public final mPreconditionsCallback:Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;

.field public mPreconditionsMet:Z

.field public final mPreconditionsMonitor:Lcom/android/systemui/util/condition/Monitor;

.field public final mTimeoutDurationSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "TimeoutToUserZero"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/condition/Monitor;Ljavax/inject/Provider;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/util/condition/Monitor;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsMet:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mDocked:Z

    new-instance v0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mOnTimeout:Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;)V

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsCallback:Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsMonitor:Lcom/android/systemui/util/condition/Monitor;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mTimeoutDurationSettingProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p5, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-void
.end method


# virtual methods
.method public final onConditionsChanged(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mDocked:Z

    const/4 v0, 0x0

    const-string v1, "TimeoutToUserZero"

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "docked, start monitoring preconditions"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsMonitor:Lcom/android/systemui/util/condition/Monitor;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsCallback:Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;

    iget-object v2, p1, Lcom/android/systemui/util/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "undocked, stop monitoring preconditions"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsMonitor:Lcom/android/systemui/util/condition/Monitor;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsCallback:Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback$$ExternalSyntheticLambda0;

    iget-object v2, p1, Lcom/android/systemui/util/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/systemui/util/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->onStateUpdated()V

    return-void
.end method

.method public final onStateUpdated()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mPreconditionsMet:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mDocked:Z

    const-string v1, "TimeoutToUserZero"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mCancelTimerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mTimeoutDurationSettingProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    sget-boolean p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "timeout user setting is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    sget-boolean v2, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->DEBUG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting a timer of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " milliseconds to switch to user 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mOnTimeout:Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mCancelTimerRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mCancelTimerRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "canceling timer to switch to user 0"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mCancelTimerRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_8
    :goto_0
    return-void
.end method
