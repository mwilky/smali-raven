.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduleEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$setCancelExecutionRunnable$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$setAnimationState$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getStatusBarWindowController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceStatusBarVisible(Z)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v5}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getSystemAnimatorAdapter$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v5}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getSystemUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v0, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v4}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getScheduledEvent$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/StatusEvent;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v6}, Lcom/android/systemui/statusbar/events/StatusEvent;->getViewCreator()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-direct {v3, v4, v0, v6}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;ILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getChipUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getExecutor$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1$1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    const-wide/16 v2, 0x5dc

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
