.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT_FLOAT:F = NaNf

.field private static final INITIAL_SCREEN_STATE:I


# instance fields
.field private mActualBacklight:F

.field private mActualSdrBacklight:F

.field private mActualState:I

.field private mBacklightChangeInProgress:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:F

.field private mPendingSdrBacklight:F

.field private mPendingState:I

.field private mStateChangeInProgress:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    const-string p1, "PhotonicModulator"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Photonic Modulator State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingSdrBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mActualSdrBacklight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStateChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBacklightChangeInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 10

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    iget v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    cmpl-float v7, v5, v7

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v4

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v3

    :goto_3
    if-nez v2, :cond_3

    iget-object v8, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v8}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)V

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    :cond_3
    if-nez v7, :cond_4

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_5

    move v8, v3

    goto :goto_4

    :cond_5
    move v8, v4

    :goto_4
    if-nez v2, :cond_7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :cond_7
    :goto_5
    if-eqz v8, :cond_a

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    iput v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:F

    iput v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualSdrBacklight:F

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$600()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "DisplayPowerState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating screen state: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerState;->access$1600(Lcom/android/server/display/DisplayPowerState;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", backlight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", sdrBacklight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState;->access$1700(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState;->access$1600(Lcom/android/server/display/DisplayPowerState;)I

    move-result v3

    invoke-interface {v0, v3, v1, v5, v6}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(IIFF)V

    goto/16 :goto_0

    :cond_a
    :goto_6
    :try_start_1
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :catch_0
    move-exception v4

    :try_start_2
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerState;->access$1500(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v9

    if-eqz v9, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    :goto_7
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setState(IFF)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    cmpl-float v4, p2, v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_b

    :cond_3
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->access$600()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting new screen state: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", backlight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:F

    iput p3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingSdrBacklight:F

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v5, :cond_6

    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v6, v2

    :goto_4
    if-nez v1, :cond_8

    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    move v5, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v5, v2

    :goto_6
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v4, :cond_a

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    move v5, v3

    goto :goto_8

    :cond_a
    :goto_7
    move v5, v2

    :goto_8
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    if-nez v6, :cond_b

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v5, :cond_c

    goto :goto_9

    :cond_c
    move v2, v3

    :goto_9
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
