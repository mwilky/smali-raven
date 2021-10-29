.class public Lcom/android/wm/shell/bubbles/BubbleController;
.super Ljava/lang/Object;
.source "BubbleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;,
        Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;
    }
.end annotation


# instance fields
.field private mAddedToWindowManager:Z

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

.field private final mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field private mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

.field private mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private mBubbleScrim:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

.field private mDensityDpi:I

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

.field private final mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

.field private mFontScale:F

.field private final mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field private mInflateSynchronously:Z

.field private mIsStatusBarShade:Z

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mLayoutDirection:I

.field private mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

.field private mOverflowDataLoadNeeded:Z

.field private mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field private final mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBounds:Landroid/graphics/Rect;

.field private mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field private mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

.field private mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

.field private final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

.field private mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$-gao8rXuoMoWmQbfJqebhms76Ac(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$restoreBubbles$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DkU1LWoD6donyRRgyFc1Kn4FVqo(Lcom/android/wm/shell/bubbles/BubbleController;ZZLcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$inflateAndAdd$10(ZZLcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hi9BK0rOQd9HuAwiFUyBpCEzouY(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$initialize$1(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9gs2y03HizXMmiWgu2iXdbexK4(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$loadOverflowBubblesFromDisk$7(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pkc007G1_HINcqvRKg0Jp-iDRFU(Lcom/android/wm/shell/bubbles/BubbleController;ILandroid/content/LocusId;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$initialize$2(ILandroid/content/LocusId;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dcs9-Ah-8e1Ske5Pum5Hbc8dHXk(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;ZLcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$setIsBubble$11(Lcom/android/wm/shell/bubbles/BubbleEntry;ZLcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$elXLppbEoHNCvZHVLsSv8JZXDqs(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$restoreBubbles$3(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fnVrywnXsea85kWRF8kiKg19AvI(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;ZLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$setExpandListener$6(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lTb8Gsn2BnrHiuMFF7_9k9VTO6A(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$loadOverflowBubblesFromDisk$9(Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mpuDdjRrfH0oTrzaDplPAvZ9uI8(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$loadOverflowBubblesFromDisk$8(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfpZzsTDAXgDDT-dmeWUSyYbGVU()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$setBubbleScrim$5()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$pRJGsVX1MwmqBFVlZ6Yv_g2R-ek(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$initialize$0(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sbdC06q5LJSk8fhANquxJmf3h_8(Lcom/android/wm/shell/bubbles/BubbleController;ZLcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->lambda$setIsBubble$12(ZLcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController$1;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    iput-boolean v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez p6, :cond_0

    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p6

    :goto_0
    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleDataRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/wm/shell/bubbles/BubbleController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onStatusBarStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->onZenStateChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/wm/shell/bubbles/BubbleController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onStatusBarVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleData;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onEntryRemoved(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onEntryAdded(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/view/View;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->setBubbleScrim(Landroid/view/View;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->setSysuiProxy(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->handleDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->onTaskbarChanged(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->updateForThemeChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->removeSuppressedSummaryIfNecessary(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleStackView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubblePositioner;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureStackViewCreated()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleData$Listener;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-object p0
.end method

.method private addToWindowManagerMaybe()V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7f6

    const v5, 0x1000028

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "Bubbles!"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflow;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->initialize(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "Bubbles"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create bubble -- no intent: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {p0, v4}, Lcom/android/wm/shell/bubbles/BubbleController;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    const-string v4, "Unable to send as bubble, "

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " couldn\'t find activity info for intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget p0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " activity is not resizable for intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    return v2
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/internal/logging/UiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)Lcom/android/wm/shell/bubbles/BubbleController;
    .locals 19

    move-object/from16 v5, p0

    move-object/from16 v0, p11

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleLogger;

    move-object v10, v2

    move-object/from16 v13, p8

    invoke-direct {v2, v13}, Lcom/android/wm/shell/bubbles/BubbleLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    new-instance v13, Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-object/from16 p1, v13

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v1, v5, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleData;

    move-object/from16 p1, v3

    move-object/from16 v3, p2

    move-object/from16 p2, v2

    move-object/from16 p3, v2

    invoke-direct {v2, v5, v3, v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/util/concurrent/Executor;)V

    new-instance v18, Lcom/android/wm/shell/bubbles/BubbleController;

    move-object v1, v0

    move-object/from16 v0, v18

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-object v3, v5

    move-object v5, v2

    move-object/from16 p2, v0

    move-object/from16 v0, p6

    invoke-direct {v2, v3, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/common/ShellExecutor;)V

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/android/wm/shell/bubbles/BubbleController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lcom/android/internal/statusbar/IStatusBarService;Landroid/view/WindowManager;Lcom/android/wm/shell/WindowManagerShellWrapper;Landroid/content/pm/LauncherApps;Lcom/android/wm/shell/bubbles/BubbleLogger;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/bubbles/BubblePositioner;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;)V

    return-object v18
.end method

.method private dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "BubbleController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleData;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private ensureStackViewCreated()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSurfaceSynchronizer:Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFloatingContentCoordinator:Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/bubbles/BubbleStackView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleData;Lcom/android/wm/shell/bubbles/BubbleStackView$SurfaceSynchronizer;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onOrientationChanged()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda12;-><init>(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setUnbubbleConversationCallback(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->addToWindowManagerMaybe()V

    return-void
.end method

.method private getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getActiveBubbles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 3

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private handleDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->isSummaryOfBubbles(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->handleSummaryDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    move-result p3

    if-nez p3, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p2

    :cond_2
    const/4 p1, 0x0

    if-nez p2, :cond_3

    return p1

    :cond_3
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    const-string p1, "BubbleController.handleDismissalInterception"

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->notifyInvalidateNotifications(Ljava/lang/String;)V

    return v1
.end method

.method private handleSummaryDismissalInterception(Lcom/android/wm/shell/bubbles/BubbleEntry;Ljava/util/List;Ljava/util/function/IntConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            ">;",
            "Ljava/util/function/IntConsumer;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->removeNotificationEntry(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/Bubble;->setSuppressNotification(Z)V

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    invoke-interface {p3, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->addSummaryToSuppress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isCurrentProfile(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentProfiles:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

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

.method private isSummaryOfBubbles(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v4

    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    if-nez p0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method private synthetic lambda$inflateAndAdd$10(ZZLcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->notificationEntryUpdated(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$initialize$1(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isIntentActive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->setPendingIntentCanceled()V

    return-void
.end method

.method private synthetic lambda$initialize$2(ILandroid/content/LocusId;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleData;->onLocusVisibilityChanged(ILandroid/content/LocusId;Z)V

    return-void
.end method

.method private synthetic lambda$loadOverflowBubblesFromDisk$7(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/16 p2, 0xf

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->overflowBubble(ILcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method private synthetic lambda$loadOverflowBubblesFromDisk$8(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Z)V

    return-void
.end method

.method private synthetic lambda$loadOverflowBubblesFromDisk$9(Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$restoreBubbles$3(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$restoreBubbles$4(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda8;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$setBubbleScrim$5()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setExpandListener$6(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;->onBubbleExpandChanged(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setIsBubble$11(Lcom/android/wm/shell/bubbles/BubbleEntry;ZLcom/android/wm/shell/bubbles/Bubble;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/android/wm/shell/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->shouldAutoExpand()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setIsBubble$12(ZLcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda7;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleEntry;ZLcom/android/wm/shell/bubbles/Bubble;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->update()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDensityDpi:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mScreenBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->onMaxBubblesChanged()V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mFontScale:F

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateFontScale()V

    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLayoutDirection:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onLayoutDirectionChanged(I)V

    :cond_4
    return-void
.end method

.method private onEntryAdded(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    :cond_0
    return-void
.end method

.method private onEntryRemoved(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->isSummaryOfBubbles(Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->getBubblesInGroup(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->canLaunchInTaskView(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleEntry;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->removeBubble(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->isBubble()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/android/wm/shell/bubbles/BubbleEntry;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/wm/shell/bubbles/BubbleEntry;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/wm/shell/bubbles/BubbleController;->isCurrentProfile(I)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p1, v2, v5}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v5, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->canBubble()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/16 v4, 0xe

    invoke-virtual {v3, v2, v4}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTmpRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v2}, Landroid/service/notification/NotificationListenerService$Ranking;->isBubble()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v5, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)Z

    invoke-direct {p0, v4, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->onEntryUpdated(Lcom/android/wm/shell/bubbles/BubbleEntry;Z)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private onStatusBarStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->collapseStack()V

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->updateStack()V

    return-void
.end method

.method private onStatusBarVisibilityChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setTemporarilyInvisible(Z)V

    :cond_1
    return-void
.end method

.method private onTaskbarChanged(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "taskbarVisible"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "taskbarPosition"

    const-string v3, "Right"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v3, v6

    goto :goto_1

    :sswitch_0
    const-string v3, "Bottom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_1

    :sswitch_2
    const-string v3, "Left"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_1
    packed-switch v3, :pswitch_data_0

    move v5, v6

    goto :goto_2

    :pswitch_0
    move v5, v1

    goto :goto_2

    :pswitch_1
    move v5, v7

    :goto_2
    :pswitch_2
    const-string v3, "taskbarBubbleXY"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const-string v4, "taskbarIconSize"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "taskbarSize"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTaskbarChanged: isVisible: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " position: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " itemPosition: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v3, v7

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " iconSize: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "Bubbles"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/PointF;

    aget v8, v3, v1

    int-to-float v8, v8

    aget v3, v3, v7

    int-to-float v3, v3

    invoke-direct {v2, v8, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubblePositioner;->setPinnedLocation(Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {v2, v4, v5, v0, v6}, Lcom/android/wm/shell/bubbles/BubblePositioner;->updateForTaskbar(IIZI)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    const-string v0, "taskbarCreated"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeFromWindowManagerMaybe()V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->addToWindowManagerMaybe()V

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateStackPosition()V

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onDisplaySizeChanged()V

    :cond_6
    const-string v0, "bubbleOverflowOpened"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->openBubbleOverflow()V

    :cond_7
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x241427 -> :sswitch_2
        0x4b4d1fc -> :sswitch_1
        0x76f2864b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onZenStateChanged()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/Bubble;->setShowDot(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private openBubbleOverflow()V
    .locals 3

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureStackViewCreated()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setShowingOverflow(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflow;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method private removeFromWindowManagerMaybe()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleScrim:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflow()Lcom/android/wm/shell/bubbles/BubbleOverflow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflow;->cleanUpExpandedState()V

    goto :goto_0

    :cond_1
    const-string p0, "Bubbles"

    const-string v0, "StackView added to WindowManager, but was null when removing!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private removeSuppressedSummaryIfNecessary(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->removeSuppressedSummary(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private restoreBubbles(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda10;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-interface {v1, v0, v2}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->getShouldRestoredEntries(Landroid/util/ArraySet;Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    return-void
.end method

.method private saveBubbles(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSavedBubbleKeysPerUser:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setBubbleScrim(Landroid/view/View;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleScrim:Landroid/view/View;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    sget-object p1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;->INSTANCE:Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda13;

    const-class v0, Landroid/os/Looper;

    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlockingForResult(Ljava/util/function/Supplier;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/Bubble;->setIsBubble(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;ZLcom/android/wm/shell/bubbles/Bubble;)V

    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->getPendingOrActiveEntry(Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setIsBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/BubbleEntry;->setFlagBubble(Z)Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setSysuiProxy(Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    return-void
.end method

.method private updateForThemeChanges()V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->onThemeChanged()V

    :cond_0
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleIconFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    const/4 v8, 0x0

    move-object v5, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public asBubbles()Lcom/android/wm/shell/bubbles/Bubbles;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    return-object p0
.end method

.method public collapseStack()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    return-void
.end method

.method public expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->promoteBubbleFromOverflow(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public expandStackAndSelectBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->promoteBubbleFromOverflow(Lcom/android/wm/shell/bubbles/Bubble;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v2, v2}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mNotifEntryToExpandOnShadeUnlock:Lcom/android/wm/shell/bubbles/BubbleEntry;

    :cond_3
    :goto_0
    return-void
.end method

.method public getImplCachedState()Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->access$700(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    move-result-object p0

    return-object p0
.end method

.method public getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method getOverflowBubbles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubblePositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-object p0
.end method

.method public getStackView()Lcom/android/wm/shell/bubbles/BubbleStackView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    return-object p0
.end method

.method getSysuiProxy()Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    return-object p0
.end method

.method public getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    return-object p0
.end method

.method public hasBubbles()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbles()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isShowingOverflow()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method hideCurrentInputMethod()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->hideCurrentInputMethodForBubbles()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V
    .locals 8

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->ensureStackViewCreated()V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setInflateSynchronously(Z)V

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;ZZ)V

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleIconFactory:Lcom/android/wm/shell/bubbles/BubbleIconFactory;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/bubbles/Bubble;->inflate(Lcom/android/wm/shell/bubbles/BubbleViewInfoTask$Callback;Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleIconFactory;Z)V

    return-void
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setListener(Lcom/android/wm/shell/bubbles/BubbleData$Listener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setSuppressionChangedListener(Lcom/android/wm/shell/bubbles/Bubbles$SuppressionChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setPendingIntentCancelledListener(Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImeListener;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController$1;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/WindowManagerShellWrapper;->addPinnedStackListener(Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->setCurrentUserId(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->addLocusIdListener(Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$2;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$3;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/BubbleController$3;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayChangingController(Lcom/android/wm/shell/common/DisplayChangeController$OnDisplayChangingListener;)V

    return-void
.end method

.method public isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getAnyBubbleWithkey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v3, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->isSummarySuppressed(Ljava/lang/String;)Z

    move-result v3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getSummaryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-nez v3, :cond_3

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isStackExpanded()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleData;->isExpanded()Z

    move-result p0

    return p0
.end method

.method loadOverflowBubblesFromDisk()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mDataRepository:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda14;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->loadBubbles(ILkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method onAllBubblesAnimatedOut()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->removeFromWindowManagerMaybe()V

    :cond_0
    return-void
.end method

.method public onBubbleNotificationSuppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->isSuppressed()Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBubbleNotificationSuppressionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mImpl:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->access$700(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->updateBubbleSuppressedState(Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void
.end method

.method public onCurrentProfilesChanged(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentProfiles:Landroid/util/SparseArray;

    return-void
.end method

.method public onUserChanged(I)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->saveBubbles(I)V

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissAll(I)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleData;->clearOverflow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowDataLoadNeeded:Z

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->restoreBubbles(I)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->setCurrentUserId(I)V

    return-void
.end method

.method public promoteBubbleFromOverflow(Lcom/android/wm/shell/bubbles/Bubble;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mLogger:Lcom/android/wm/shell/bubbles/BubbleLogger;

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleLogger$Event;->BUBBLE_OVERFLOW_REMOVE_BACK_TO_STACK:Lcom/android/wm/shell/bubbles/BubbleLogger$Event;

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleLogger;->log(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setInflateSynchronously(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/Bubble;->setShouldAutoExpand(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/android/wm/shell/bubbles/Bubble;->markAsAccessedAt(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/bubbles/BubbleController;->setIsBubble(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    return-void
.end method

.method public removeBubble(Ljava/lang/String;I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasAnyBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->dismissBubbleWithKey(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mExpandListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setExpandListener(Lcom/android/wm/shell/bubbles/Bubbles$BubbleExpandListener;)V

    :cond_0
    return-void
.end method

.method public setInflateSynchronously(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mInflateSynchronously:Z

    return-void
.end method

.method public setOverflowListener(Lcom/android/wm/shell/bubbles/BubbleData$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mOverflowListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-void
.end method

.method public updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V

    return-void
.end method

.method public updateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;ZZ)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mSysuiProxy:Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->setNotificationInterruption(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->visuallyInterruptive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/BubbleData;->getOverflowBubbleWithKey(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/Bubble;->setEntry(Lcom/android/wm/shell/bubbles/BubbleEntry;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getOrCreateBubble(Lcom/android/wm/shell/bubbles/BubbleEntry;Lcom/android/wm/shell/bubbles/Bubble;)Lcom/android/wm/shell/bubbles/Bubble;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/bubbles/BubbleController;->inflateAndAdd(Lcom/android/wm/shell/bubbles/Bubble;ZZ)V

    :goto_0
    return-void
.end method

.method public updateStack()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mIsStatusBarShade:Z

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->hasBubbles()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateContentDescription()V

    return-void
.end method

.method updateWindowFlagsForOverflow(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mAddedToWindowManager:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWmLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    :goto_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
