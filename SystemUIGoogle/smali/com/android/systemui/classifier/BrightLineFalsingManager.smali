.class public Lcom/android/systemui/classifier/BrightLineFalsingManager;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/FalsingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/BrightLineFalsingManager$XYDt;,
        Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final RECENT_INFO_LOG:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RECENT_SWIPES:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBeliefListener:Lcom/android/systemui/classifier/HistoryTracker$BeliefListener;

.field private final mClassifiers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field private mDestroyed:Z

.field private final mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

.field private final mFalsingBeliefListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFalsingTapListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureFinalizedListener:Lcom/android/systemui/classifier/FalsingDataProvider$GestureFinalizedListener;

.field private final mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

.field private mIsFalseTouchCalls:I

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPriorInteractionType:I

.field private mPriorResults:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/systemui/classifier/FalsingClassifier$Result;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionListener:Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;

.field private final mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

.field private final mTestHarness:Z


# direct methods
.method public static synthetic $r8$lambda$2JukxUDIxLvARzw6cbnzScAO5ss(Lcom/android/systemui/classifier/BrightLineFalsingManager;I[ZLcom/android/systemui/classifier/FalsingClassifier;)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->lambda$isFalseTouch$0(I[ZLcom/android/systemui/classifier/FalsingClassifier;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Jj8XTp-iZIuP5eR8YU0R_8UAq9o(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;Lcom/android/systemui/classifier/FalsingClassifier;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->lambda$onProximityEvent$1(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;Lcom/android/systemui/classifier/FalsingClassifier;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FalsingManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/internal/logging/MetricsLogger;Ljava/util/Set;Lcom/android/systemui/classifier/SingleTapClassifier;Lcom/android/systemui/classifier/DoubleTapClassifier;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/accessibility/AccessibilityManager;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/classifier/FalsingDataProvider;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/classifier/FalsingClassifier;",
            ">;",
            "Lcom/android/systemui/classifier/SingleTapClassifier;",
            "Lcom/android/systemui/classifier/DoubleTapClassifier;",
            "Lcom/android/systemui/classifier/HistoryTracker;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$1;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;

    new-instance v1, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$2;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mBeliefListener:Lcom/android/systemui/classifier/HistoryTracker$BeliefListener;

    new-instance v2, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$3;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;)V

    iput-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureFinalizedListener:Lcom/android/systemui/classifier/FalsingDataProvider$GestureFinalizedListener;

    const/4 v3, 0x7

    iput v3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iput-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iput-object p3, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    iput-object p5, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    iput-object p6, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    iput-object p7, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean p9, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    invoke-virtual {p1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->addSessionListener(Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/classifier/FalsingDataProvider;->addGestureCompleteListener(Lcom/android/systemui/classifier/FalsingDataProvider$GestureFinalizedListener;)V

    invoke-virtual {p6, v1}, Lcom/android/systemui/classifier/HistoryTracker;->addBeliefListener(Lcom/android/systemui/classifier/HistoryTracker$BeliefListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/classifier/HistoryTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/classifier/BrightLineFalsingManager;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/classifier/BrightLineFalsingManager;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/classifier/BrightLineFalsingManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/classifier/FalsingDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/classifier/BrightLineFalsingManager;)Lcom/android/systemui/classifier/SingleTapClassifier;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    return-object p0
.end method

.method private checkDestroyed()V
    .locals 1

    iget-boolean p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDestroyed:Z

    if-eqz p0, :cond_0

    const-string p0, "FalsingManager"

    const-string v0, "Tried to use FalsingManager after being destroyed!"

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getPassedResult(D)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/classifier/FalsingClassifier$Result;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isFalseTouch$0(I[ZLcom/android/systemui/classifier/FalsingClassifier;)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    move-result-wide v3

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    move-result-wide v5

    move-object v1, p3

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/classifier/FalsingClassifier;->classifyGesture(IDD)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    const/4 p1, 0x0

    aget-boolean p3, p2, p1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v0

    or-int/2addr p3, v0

    aput-boolean p3, p2, p1

    return-object p0
.end method

.method private static synthetic lambda$onProximityEvent$1(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;Lcom/android/systemui/classifier/FalsingClassifier;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/classifier/FalsingClassifier;->onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FalsingManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static logInfo(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FalsingManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private skipFalsing(I)Z
    .locals 1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mTestHarness:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isJustUnlockedWithFace()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isDocked()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanupInternal()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDestroyed:Z

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSessionListener:Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->removeSessionListener(Lcom/android/systemui/classifier/FalsingDataProvider$SessionListener;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mGestureFinalizedListener:Lcom/android/systemui/classifier/FalsingDataProvider$GestureFinalizedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->removeGestureCompleteListener(Lcom/android/systemui/classifier/FalsingDataProvider$GestureFinalizedListener;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    sget-object v1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mBeliefListener:Lcom/android/systemui/classifier/HistoryTracker$BeliefListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/classifier/HistoryTracker;->removeBeliefListener(Lcom/android/systemui/classifier/HistoryTracker$BeliefListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "BRIGHTLINE FALSING MANAGER"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "classifierEnabled="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->isClassifierEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "mJustUnlockedWithFace="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p2}, Lcom/android/systemui/classifier/FalsingDataProvider;->isJustUnlockedWithFace()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "isDocked="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p2}, Lcom/android/systemui/classifier/FalsingDataProvider;->isDocked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo p2, "width="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p2}, Lcom/android/systemui/classifier/FalsingDataProvider;->getWidthPixels()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string p2, "height="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->getHeightPixels()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_SWIPES:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->size()I

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Recent swipes:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;

    invoke-virtual {p2}, Lcom/android/systemui/classifier/BrightLineFalsingManager$DebugSwipeRecord;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_1

    :cond_1
    const-string p0, "No recent swipes"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p0, "Recent falsing info:"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->RECENT_INFO_LOG:Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public isClassifierEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isFalseDoubleTap()Z
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const-string p0, "Skipped falsing"

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDoubleTapClassifier:Lcom/android/systemui/classifier/DoubleTapClassifier;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {v2}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/HistoryTracker;->falseConfidence()D

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/classifier/FalsingClassifier;->classifyGesture(IDD)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "False Double Tap: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result p0

    return p0
.end method

.method public isFalseTap(I)Z
    .locals 11

    invoke-direct {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const-string p0, "Skipped falsing"

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_0
    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/4 v0, 0x1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_4

    const/4 v8, 0x2

    if-eq p1, v8, :cond_3

    const/4 v8, 0x3

    if-eq p1, v8, :cond_2

    :cond_1
    move-wide v8, v6

    goto :goto_0

    :cond_2
    const-wide v8, 0x3fe3333333333333L    # 0.6

    goto :goto_0

    :cond_3
    const-wide v8, 0x3fd3333333333333L    # 0.3

    goto :goto_0

    :cond_4
    move-wide v8, v4

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    iget-object v10, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v10}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v10}, Lcom/android/systemui/classifier/FalsingDataProvider;->getPriorMotionEvents()Ljava/util/List;

    move-result-object v10

    goto :goto_1

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v10}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v10

    :goto_1
    invoke-virtual {p1, v10, v8, v9}, Lcom/android/systemui/classifier/SingleTapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->isJustUnlockedWithFace()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const-string p0, "False Single Tap: false (face detected)"

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->isFalseDoubleTap()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p0, "False Single Tap: false (double tapped)"

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/HistoryTracker;->falseBelief()D

    move-result-wide v1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double p1, v1, v8

    if-lez p1, :cond_8

    const-class p1, Lcom/android/systemui/classifier/BrightLineFalsingManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bad history"

    invoke-static {v6, v7, p1, v1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->falsed(DLjava/lang/String;Ljava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const-string p1, "False Single Tap: true (bad history)"

    invoke-static {p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    sget-object p1, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda2;

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return v0

    :cond_8
    invoke-static {v4, v5}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const-string p0, "False Single Tap: false (default)"

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "False Single Tap: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " (simple)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result p0

    return p0
.end method

.method public isFalseTouch(I)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    iput p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorInteractionType:I

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->skipFalsing(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->getPassedResult(D)Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    const-string p0, "Skipped falsing"

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/classifier/BrightLineFalsingManager;I[Z)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "False Gesture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean p1, v0, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->logDebug(Ljava/lang/String;)V

    aget-boolean p0, v0, v1

    return p0
.end method

.method public isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSimpleTap()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/classifier/BrightLineFalsingManager;->checkDestroyed()V

    iget-object v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mSingleTapClassifier:Lcom/android/systemui/classifier/SingleTapClassifier;

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->getRecentMotionEvents()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/classifier/SingleTapClassifier;->isTap(Ljava/util/List;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mPriorResults:Ljava/util/Collection;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->isFalse()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isUnlockingDisabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mClassifiers:Ljava/util/Collection;

    new-instance v0, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/BrightLineFalsingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "falsing_success_after_attempts"

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mIsFalseTouchCalls:I

    :cond_0
    return-void
.end method

.method public removeFalsingBeliefListener(Lcom/android/systemui/plugins/FalsingManager$FalsingBeliefListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingBeliefListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTapListener(Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/BrightLineFalsingManager;->mFalsingTapListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
