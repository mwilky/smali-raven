.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

.field private final mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mDisplayId:I

.field private final mEmbeddedDisplayIdList:Landroid/util/IntArray;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    iput p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    nop

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getAccessibilityControllerInternal(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    return v0
.end method

.method private static addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private computeWindowRegionInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v1}, Lcom/android/server/wm/AccessibilityController;->access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    new-instance v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;)V

    invoke-static {v0, v2}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getSortedShellRoots(Landroid/util/SparseArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ShellRoot;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ShellRoot;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ShellRoot;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private getTopFocusWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private static isReportedWindowType(I)Z
    .locals 1

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ea

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7e2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7eb

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3ec

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7df

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7ee

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$populateVisibleWindowsOnScreen$2(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private populateVisibleWindowsOnScreen(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Ljava/util/List;)V

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Landroid/graphics/Region;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f0

    if-eq v0, v1, :cond_3

    sget-object v0, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, p2, p3, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasTapExcludeRegion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Region;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getTapExcludeRegion(Landroid/graphics/Region;)V

    sget-object v2, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v0, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object v2, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasTapExcludeRegion()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Region;->setEmpty()V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->areAppWindowBoundsLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/server/wm/AccessibilityController;->getLetterboxBounds(Lcom/android/server/wm/WindowState;)Landroid/graphics/Region;

    move-result-object v0

    sget-object v1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p3, v0, p3, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_3
    return-void
.end method

.method private windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Region;",
            "Landroid/graphics/Region;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->shouldIgnoreForAccessibility(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f2

    if-eq v4, v5, :cond_3

    return v1

    :cond_3
    invoke-virtual {p3, p2}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Region;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v1

    :cond_4
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    return v1
.end method


# virtual methods
.method addEmbeddedDisplay(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    return-void
.end method

.method addShellRootsIfAbove(Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;ILjava/util/List;Ljava/util/Set;Landroid/graphics/Region;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ShellRoot;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Region;",
            "Z)I"
        }
    .end annotation

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->shellRootIsAbove(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/ShellRoot;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ShellRoot;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->getWindowInfo()Landroid/view/WindowInfo;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result v2

    iput v2, v1, Landroid/view/WindowInfo;->layer:I

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p6, v2, p6, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p6}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p7, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return p3
.end method

.method computeChangedWindows(Z)V
    .locals 30

    move-object/from16 v9, p0

    move/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.computeChangedWindows"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceSend="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    const/4 v12, 0x0

    iget-object v0, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->getTargetAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->getTopFocusWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    move-object v14, v1

    if-nez v14, :cond_2

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_2
    :try_start_4
    iget-object v1, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v15, v1

    if-nez v15, :cond_3

    :try_start_5
    const-string v1, "WindowManager"

    const-string v2, "display content is null, should be created later"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_3
    :try_start_6
    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    move-object v8, v1

    iget-object v1, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v8, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    move v7, v1

    iget-object v1, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    move v6, v1

    iget-object v1, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    move-object v5, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v1, v7, v6}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v1, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    move-object v4, v1

    invoke-direct {v9, v4}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreen(Landroid/util/SparseArray;)V

    iget-object v1, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    move/from16 v16, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    invoke-direct {v9, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->getSortedShellRoots(Landroid/util/SparseArray;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v18, v12

    move-object v12, v3

    move-object v3, v0

    const/4 v0, 0x0

    add-int/lit8 v19, v16, -0x1

    move/from16 v29, v19

    move/from16 v19, v1

    move/from16 v1, v29

    :goto_1
    if-ltz v1, :cond_8

    :try_start_7
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v20

    move/from16 v20, v0

    move/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move-object/from16 v2, v21

    move-object/from16 v24, v4

    move v4, v0

    move-object/from16 v25, v5

    move-object v5, v11

    move/from16 v26, v6

    move-object/from16 v6, v23

    move/from16 v27, v7

    move-object/from16 v7, v25

    move-object/from16 v28, v8

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addShellRootsIfAbove(Lcom/android/server/wm/WindowState;Ljava/util/ArrayList;ILjava/util/List;Ljava/util/Set;Landroid/graphics/Region;Z)I

    move-result v1

    move v0, v1

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v19, :cond_4

    move-object/from16 v6, v23

    move-object/from16 v5, v25

    goto :goto_3

    :cond_4
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v4, v21

    invoke-direct {v9, v4, v2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowRegionInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)V

    move-object/from16 v5, v25

    invoke-direct {v9, v4, v2, v5, v12}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowMattersToAccessibility(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v6, v23

    invoke-static {v4, v2, v11, v6}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->addPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Ljava/util/List;Ljava/util/Set;)V

    invoke-direct {v9, v4, v2, v5, v12}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->updateUnaccountedSpace(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;Landroid/graphics/Region;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v7

    or-int v7, v19, v7

    move/from16 v19, v7

    goto :goto_2

    :cond_5
    move-object/from16 v6, v23

    iget-object v7, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    invoke-static {v4, v7}, Lcom/android/server/wm/AccessibilityController;->isUntouchableNavigationBar(Lcom/android/server/wm/WindowState;Landroid/graphics/Region;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v15}, Lcom/android/server/wm/AccessibilityController;->getNavBarInsets(Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v7

    sget-object v8, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v7, v5, v8}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_6
    :goto_2
    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v19, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v22, -0x1

    move-object v2, v6

    move-object/from16 v4, v24

    move/from16 v6, v26

    move/from16 v7, v27

    move-object/from16 v8, v28

    goto/16 :goto_1

    :cond_8
    move/from16 v22, v1

    move-object/from16 v24, v4

    move/from16 v26, v6

    move/from16 v27, v7

    move-object/from16 v28, v8

    move-object v6, v2

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_d

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    iget-object v7, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    iput-object v7, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    :cond_9
    iget-object v7, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v7, :cond_c

    iget-object v7, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v8, v7, -0x1

    :goto_5
    if-ltz v8, :cond_b

    move/from16 v20, v0

    iget-object v0, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v8, v8, -0x1

    move/from16 v0, v20

    goto :goto_5

    :cond_b
    move/from16 v20, v0

    goto :goto_6

    :cond_c
    move/from16 v20, v0

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v20

    goto :goto_4

    :cond_d
    move/from16 v20, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->clear()V

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    iget-object v0, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController;->access$1900(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    goto :goto_7

    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    :goto_7
    nop

    iget-object v4, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v12, v4

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    invoke-interface {v0, v10, v2, v12, v11}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V

    invoke-static {v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v12, v18

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v18, v12

    :goto_8
    :try_start_9
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8
.end method

.method getAndClearEmbeddedDisplayIdList()Landroid/util/IntArray;
    .locals 2

    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    return-object v0
.end method

.method public synthetic lambda$computeWindowRegionInScreen$1$AccessibilityController$WindowsForAccessibilityObserver(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v1}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public synthetic lambda$getSortedShellRoots$0$AccessibilityController$WindowsForAccessibilityObserver(Lcom/android/server/wm/ShellRoot;Lcom/android/server/wm/ShellRoot;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/ShellRoot;->getWindowType()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/ShellRoot;->getWindowType()I

    move-result v3

    invoke-interface {v1, v3, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic lambda$populateVisibleWindowsOnScreen$3$AccessibilityController$WindowsForAccessibilityObserver(Ljava/util/List;Lcom/android/server/wm/WindowState;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->findRootDisplayParentWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method notifyDisplayReparented(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;->onDisplayReparented(I)V

    return-void
.end method

.method performComputeChangedWindows(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceSend="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager.performComputeChangedWindows"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    return-void
.end method

.method scheduleComputeChangedWindows()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-wide/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    const-string v3, "WindowManager.scheduleComputeChangedWindows"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method shellRootIsAbove(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/ShellRoot;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p2}, Lcom/android/server/wm/ShellRoot;->getWindowType()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowsForAccessibilityObserver{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEmbeddedDisplayIdList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mEmbeddedDisplayIdList:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
