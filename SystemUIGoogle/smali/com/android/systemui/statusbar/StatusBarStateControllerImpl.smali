.class public Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;
.super Ljava/lang/Object;
.source "StatusBarStateControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/SysuiStatusBarStateController;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# static fields
.field private static final DEBUG_IMMERSIVE_APPS:Z

.field private static final SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDarkAnimator:Landroid/animation/ValueAnimator;

.field private mDozeAmount:F

.field private mDozeAmountTarget:F

.field private mDozeInterpolator:Landroid/view/animation/Interpolator;

.field private mHistoricalRecords:[Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

.field private mHistoryIndex:I

.field private mIsDozing:Z

.field private mIsExpanded:Z

.field private mIsFullscreen:Z

.field private mKeyguardRequested:Z

.field private mLastState:I

.field private mLeaveOpenOnKeyguardHide:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPulsing:Z

.field private mState:I

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUpcomingState:I

.field private mView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$Tt1933kHGyvpETnvNAHk4CJisoQ(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->lambda$removeCallback$1(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mVE5aLRSXgK-X1SPMYjSJq9SyLI(Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;)I
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->lambda$static$0(Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.immersive_apps"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->DEBUG_IMMERSIVE_APPS:Z

    sget-object v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda1;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->sComparator:Ljava/util/Comparator;

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$1;

    const-string v1, "mDozeAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/dump/DumpManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoryIndex:I

    const/16 v1, 0x20

    new-array v2, v1, [Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoricalRecords:[Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsFullscreen:Z

    sget-object v2, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoricalRecords:[Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

    new-instance v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;-><init>(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$1;)V

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setDozeAmountInternal(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->cancelInteractionJankMonitor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->endInteractionJankMonitor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->beginInteractionJankMonitor()V

    return-void
.end method

.method private addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->sComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method private beginInteractionJankMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getCujType()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private cancelInteractionJankMonitor()V
    .locals 1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getCujType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    return-void
.end method

.method public static describe(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private endInteractionJankMonitor()V
    .locals 1

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getCujType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    return-void
.end method

.method private getCujType()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto :goto_0

    :cond_0
    const/16 p0, 0x17

    :goto_0
    return p0
.end method

.method private static synthetic lambda$removeCallback$1(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;)Z
    .locals 0

    iget-object p1, p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mRank:I

    return p0
.end method

.method private recordHistoricalState(IIZ)V
    .locals 3

    const-wide/16 v0, 0x1000

    const-string v2, "statusBarState"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoryIndex:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoricalRecords:[Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

    aget-object p0, p0, v0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;->mNewState:I

    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;->mLastState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;->mTimestamp:J

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;->mUpcoming:Z

    return-void
.end method

.method private setDozeAmountInternal(F)V
    .locals 5

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#setDozeAmount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v3, v3, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    invoke-interface {v3, v4, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozeAmountChanged(FF)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startDozeAnimation()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->TOUCH_RESPONSE_REVERSE:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmountTarget:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    const v1, 0x7fffffff

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addListenerInternalLocked(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p1, "StatusBarStateController: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->describe(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLastState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLastState:I

    invoke-static {p3}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->describe(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mLeaveOpenOnKeyguardHide="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mKeyguardRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mIsDozing="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, " Historical states:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    const/16 v1, 0x20

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoricalRecords:[Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

    aget-object v1, v1, p1

    iget-wide v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;->mTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoryIndex:I

    add-int/2addr p1, v1

    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoryIndex:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, 0x1

    if-lt p1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoryIndex:I

    add-int/2addr v3, v1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mHistoricalRecords:[Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$HistoricalState;

    and-int/lit8 v4, p1, 0x1f

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public fromShadeLocked()Z
    .locals 1

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLastState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCurrentOrUpcomingState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    return p0
.end method

.method public getDozeAmount()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    return p0
.end method

.method public getInterpolatedDozeAmount()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeInterpolator:Landroid/view/animation/Interpolator;

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmount:F

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    return p0
.end method

.method public goingToFullShade()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDozing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    return p0
.end method

.method public isKeyguardRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    return p0
.end method

.method public isPulsing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mPulsing:Z

    return p0
.end method

.method public leaveOpenOnKeyguardHide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    return p0
.end method

.method public removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public setAndInstrumentDozeAmount(Landroid/view/View;FZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmountTarget:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mView:Landroid/view/View;

    :cond_3
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mDozeAmountTarget:F

    if-eqz p3, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->startDozeAnimation()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->setDozeAmountInternal(F)V

    :goto_0
    return-void
.end method

.method public setIsDozing(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#setIsDozing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozingChanged(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setKeyguardRequested(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mKeyguardRequested:Z

    return-void
.end method

.method public setLeaveOpenOnKeyguardHide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLeaveOpenOnKeyguardHide:Z

    return-void
.end method

.method public setPanelExpanded(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#setIsExpanded"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onExpandedChanged(Z)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setPulsing(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mPulsing:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mPulsing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onPulsingChanged(Z)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public setState(IZ)Z
    .locals 4

    const/4 v0, 0x3

    if-gt p1, v0, :cond_5

    if-ltz p1, :cond_5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->recordHistoricalState(IIZ)V

    iget p2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-nez p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const-string p2, "SbStateController"

    const-string v0, "Invalid state transition: SHADE -> SHADE_LOCKED"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#setState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v2, v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-interface {v2, v3, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onStatePreChange(II)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mLastState:I

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarStateEvent;->fromState(I)Lcom/android/systemui/statusbar/StatusBarStateEvent;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v1, v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onStateChanged(I)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object p1, p1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onStatePostChange()V

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    monitor-exit p2

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid state "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemBarAttributes(IILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p3, v2}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsFullscreen:Z

    if-eq v3, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsFullscreen:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    iget-object v4, v4, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v4, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onFullscreenStateChanged(Z)V

    goto :goto_2

    :cond_2
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_3
    sget-boolean p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->DEBUG_IMMERSIVE_APPS:Z

    if-eqz p0, :cond_6

    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_4

    move v0, v2

    :cond_4
    const-class p0, Landroid/view/InsetsFlags;

    const-string p1, "behavior"

    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/view/InsetsVisibilities;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "none"

    :cond_5
    const-string p2, "SbStateController"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " dim="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " behavior="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " requested visibilities: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public setUpcomingState(I)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mUpcomingState:I

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->recordHistoricalState(IIZ)V

    return-void
.end method
