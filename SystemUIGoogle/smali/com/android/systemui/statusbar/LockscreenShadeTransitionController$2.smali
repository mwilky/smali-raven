.class public final Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;
.super Ljava/lang/Object;
.source "LockscreenShadeTransitionController.kt"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/content/Context;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandedChanged(Z)V
    .locals 5

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core()F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v3, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getDragDownAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->access$getLogger$p(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logDragDownAmountResetWhenFullyCollapsed()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setDragDownAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(F)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->access$getPulseHeight$p(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)F

    move-result p1

    cmpg-float p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getPulseHeightAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->access$getLogger$p(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logPulseHeightNotResetWhenFullyCollapsed()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$2;->this$0:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setPulseHeight(FZ)V

    :cond_5
    return-void
.end method
