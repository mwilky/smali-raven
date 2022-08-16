.class public final Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;
    }
.end annotation


# instance fields
.field public mAddedChildren:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mAllowedReorderViews:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mGroupChangedAllowed:Z

.field public final mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public mIsTemporaryReorderingAllowed:Z

.field public mLowPriorityReorderingViews:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnTemporaryReorderingExpired:Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda1;

.field public mPanelExpanded:Z

.field public final mPersistentGroupCallbacks:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final mPersistentReorderingCallbacks:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public mPulsing:Z

.field public mReorderingAllowed:Z

.field public final mReorderingAllowedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenOn:Z

.field public mTemporaryReorderingStart:J

.field public mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

.field public final mVisualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

.field public final mWakefulnessObserver:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$3;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Landroid/os/Handler;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/dump/DumpManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mReorderingAllowedCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPersistentReorderingCallbacks:Landroidx/collection/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPersistentGroupCallbacks:Landroidx/collection/ArraySet;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    new-instance v0, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mOnTemporaryReorderingExpired:Lcom/android/systemui/qs/QuickStatusBarHeader$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mWakefulnessObserver:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$3;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mVisualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    if-eqz p1, :cond_0

    new-instance p2, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    :cond_0
    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isPulsing()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPulsing:Z

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPulsing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->updateAllowedStates()V

    :goto_0
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;)V

    invoke-interface {p4, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :cond_2
    if-eqz p5, :cond_3

    iget-object p0, p5, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static notifyChangeAllowed(Ljava/util/ArrayList;Landroidx/collection/ArraySet;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;->onChangeAllowed()V

    invoke-virtual {p1, v1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mReorderingAllowed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mAddedChildren:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mLowPriorityReorderingViews:Landroidx/collection/ArraySet;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mVisibilityLocationProvider:Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string p2, "VisualStabilityManager state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mIsTemporaryReorderingAllowed="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mTemporaryReorderingStart="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mTemporaryReorderingStart:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p2, "    Temporary reordering window has been open for "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-eqz p2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mTemporaryReorderingStart:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p0, "ms"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mAllowedReorderViews:Landroidx/collection/ArraySet;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final updateAllowedStates()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mScreenOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mIsTemporaryReorderingAllowed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPulsing:Z

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mReorderingAllowed:Z

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mReorderingAllowed:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mReorderingAllowedCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPersistentReorderingCallbacks:Landroidx/collection/ArraySet;

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->notifyChangeAllowed(Ljava/util/ArrayList;Landroidx/collection/ArraySet;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mVisualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->setReorderingAllowed(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mScreenOn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPanelExpanded:Z

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPulsing:Z

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mGroupChangedAllowed:Z

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mGroupChangedAllowed:Z

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mGroupChangesAllowedCallbacks:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPersistentGroupCallbacks:Landroidx/collection/ArraySet;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->notifyChangeAllowed(Ljava/util/ArrayList;Landroidx/collection/ArraySet;)V

    :cond_7
    return-void
.end method
