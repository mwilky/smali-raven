.class final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->access$notifySystemAnimationUpdate(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Landroid/animation/ValueAnimator;)V

    return-void
.end method
