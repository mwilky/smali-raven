.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;-><init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$getChipAnimationController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    move-result-object v0

    const-string v1, "anim"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->getAnimationState()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->onChipAnimationUpdate(Landroid/animation/ValueAnimator;I)V

    return-void
.end method
