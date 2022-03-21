.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;,
        Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemStatusAnimationScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,406:1\n1571#2,9:407\n1819#2:416\n1820#2:418\n1580#2:419\n1571#2,9:420\n1819#2:429\n1820#2:431\n1580#2:432\n1819#2,2:433\n1819#2,2:435\n1819#2,2:437\n1819#2,2:439\n1#3:417\n1#3:430\n*E\n*S KotlinDebug\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler\n*L\n222#1,9:407\n222#1:416\n222#1:418\n222#1:419\n235#1,9:420\n235#1:429\n235#1:431\n235#1:432\n253#1,2:433\n257#1,2:435\n261#1,2:437\n308#1,2:439\n222#1:417\n235#1:430\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;


# instance fields
.field private animationState:I

.field private cancelExecutionRunnable:Ljava/lang/Runnable;

.field private final chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

.field private final chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private hasPersistentDot:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

.field private final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field private final systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field private final systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->Companion:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    const-string v0, "coordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chipAnimationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarWindowController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemClock"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    iput-object p6, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->attachScheduler(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    const-string p1, "SystemStatusAnimationScheduler"

    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public static final synthetic access$getChipAnimationController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    return-object p0
.end method

.method public static final synthetic access$getChipUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getScheduledEvent$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/StatusEvent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarWindowController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/window/StatusBarWindowController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    return-object p0
.end method

.method public static final synthetic access$getSystemAnimatorAdapter$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    return-object p0
.end method

.method public static final synthetic access$getSystemUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$notifySystemAnimationUpdate(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$notifySystemFinish(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemFinish()V

    return-void
.end method

.method public static final synthetic access$notifySystemStart(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemStart()V

    return-void
.end method

.method public static final synthetic access$notifyTransitionToPersistentDot(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/Animator;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAnimationState$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    return-void
.end method

.method public static final synthetic access$setCancelExecutionRunnable$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->cancelExecutionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setScheduledEvent$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-void
.end method

.method private final clearDotIfVisible()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyHidePersistentDot()Landroid/animation/Animator;

    return-void
.end method

.method private final isImmersiveIndicatorEnabled()Z
    .locals 2

    const-string p0, "privacy"

    const-string v0, "enable_immersive_indicator"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isTooEarly()Z
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final notifyHidePersistentDot()Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onHidePersistentDot()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private final notifySystemAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySystemFinish()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySystemStart()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyTransitionToPersistentDot()Landroid/animation/Animator;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lcom/android/systemui/statusbar/events/StatusEvent;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemStatusAnimationTransitionToPersistentDot(Ljava/lang/String;)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_3
    return-object v3
.end method

.method private final scheduleEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->cancelExecutionRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->startObserving()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->addCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    const-string p3, "Scheduled event: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "Has persistent privacy dot: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "Animation state: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Listeners:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "(none)"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    const-string p3, "  "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final getAnimationState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    return p0
.end method

.method public final getHasPersistentDot()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    return p0
.end method

.method public final onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isTooEarly()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isImmersiveIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v1

    :goto_0
    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduleEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    :goto_2
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    :cond_5
    :goto_3
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->stopObserving()V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->removeCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    return-void
.end method

.method public final setShouldShowPersistentPrivacyIndicator(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isImmersiveIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->clearDotIfVisible()V

    :cond_1
    :goto_0
    return-void
.end method
