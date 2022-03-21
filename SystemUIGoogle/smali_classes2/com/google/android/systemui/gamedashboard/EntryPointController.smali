.class public Lcom/google/android/systemui/gamedashboard/EntryPointController;
.super Lcom/android/systemui/navigationbar/NavigationBarOverlayController;
.source "EntryPointController.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAlwaysOn:Z

.field private final mAlwaysOnObserver:Landroid/database/ContentObserver;

.field private mCurrentUserId:I

.field private final mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

.field private final mGameManager:Landroid/app/GameManager;

.field private final mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

.field private mGamePackageName:Ljava/lang/String;

.field private mGameTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mHasGameOverlay:Z

.field private mHideAnimator:Landroid/animation/Animator;

.field private mInSplitScreen:Z

.field private final mInSplitScreenCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsImmersive:Z

.field private mListenersRegistered:Z

.field private mNavBarMode:I

.field public final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mRecentsAnimationRunning:Z

.field private final mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

.field private mShouldShow:Z

.field private final mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

.field private final mTaskSurfaceHelper:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

.field private final mTranslateDownAnimationDuration:I

.field private final mTranslateUpAnimationDuration:I

.field private final mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public static synthetic $r8$lambda$BdEEgrXXfDpkVp0shRol2N_Dfh4(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->lambda$new$1(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qjr9td7j4-O6B5W5ese-i-hsGh8(Lcom/google/android/systemui/gamedashboard/EntryPointController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->lambda$new$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VcVcWE2qGRM_B0Sxv8eSSgrgnCU(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onEntryPointClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c1pD_Zvq6L-o-JTKevSmBLtB43U(IILcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->lambda$onRunningTaskChange$2(IILcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/Optional;Lcom/android/systemui/recents/OverviewProxyService;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/ToastController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;Ljava/util/Optional;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/google/android/systemui/gamedashboard/GameModeDndController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, p13

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    new-instance v4, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;

    invoke-direct {v4, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    iput-object v4, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    new-instance v5, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    iput-object v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mInSplitScreenCallback:Ljava/util/function/Consumer;

    move-object v5, p2

    iput-object v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v5, v0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/GameManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/GameManager;

    iput-object v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameManager:Landroid/app/GameManager;

    move-object v5, p5

    iput-object v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    move-object v5, p7

    invoke-virtual {p7, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v5

    iput v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    const-string v5, "com.google.android.feature.GAME_OVERLAY"

    move-object/from16 v6, p10

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHasGameOverlay:Z

    new-instance v5, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v5, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    new-instance v6, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {v5, v6}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setEntryPointOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$integer;->game_toast_translate_up_animation_duration:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTranslateUpAnimationDuration:I

    sget v6, Lcom/android/systemui/R$integer;->game_toast_translate_down_animation_duration:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTranslateDownAnimationDuration:I

    new-instance v5, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/google/android/systemui/gamedashboard/EntryPointController$1;)V

    iput-object v5, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    iput-boolean v3, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    iput-object v1, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    move-object/from16 v5, p9

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    iput-object v2, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    invoke-virtual {v2, p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskSurfaceHelper:Ljava/util/Optional;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    move-object v4, p8

    invoke-virtual {p8, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    new-instance v2, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;

    move-object v4, p3

    invoke-direct {v2, p0, p3}, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    iput-object v2, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v2

    iput v2, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->checkAlwaysOn()V

    new-instance v2, Lcom/google/android/systemui/gamedashboard/EntryPointController$3;

    move-object v4, p6

    invoke-direct {v2, p0, p6}, Lcom/google/android/systemui/gamedashboard/EntryPointController$3;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAlwaysOnObserver:Landroid/database/ContentObserver;

    iget-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_dashboard_always_on"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget v6, v0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mCurrentUserId:I

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v2, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setEntryPointOnTouchListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    move-object v2, p4

    invoke-virtual {p4, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onRunningTaskChange()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mIsImmersive:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/google/android/systemui/gamedashboard/EntryPointController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAlwaysOn:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mInSplitScreen:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAlwaysOnObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/gamedashboard/EntryPointController;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$502(Lcom/google/android/systemui/gamedashboard/EntryPointController;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->checkAlwaysOn()V

    return-void
.end method

.method static synthetic access$802(Lcom/google/android/systemui/gamedashboard/EntryPointController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mRecentsAnimationRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->onRunningTaskChange()V

    return-void
.end method

.method private checkAlwaysOn()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mCurrentUserId:I

    const-string v2, "game_dashboard_always_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    iput-boolean v3, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAlwaysOn:Z

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    invoke-virtual {v0, v3, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setEntryPointVisibility(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mInSplitScreen:Z

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mInSplitScreenCallback:Ljava/util/function/Consumer;

    invoke-interface {p1, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->registerInSplitScreenListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$onRunningTaskChange$2(IILcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;->setGameModeForTask(II)V

    return-void
.end method

.method private onEntryPointClicked(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_LAUNCH:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;->createIntentForStart(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->game_dashboard_fade_in:I

    sget v2, Lcom/android/systemui/R$anim;->game_dashboard_fade_out:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityOptions;->makeCustomTaskAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private onRunningTaskChange()V
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mRecentsAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ToastController;->remove()V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGamePackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    const-string v2, "com.google.android.play.games"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mInSplitScreen:Z

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAlwaysOn:Z

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    :cond_5
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/systemui/gamedashboard/GameMenuActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    :goto_1
    move v2, v4

    :goto_2
    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHasGameOverlay:Z

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->setGameModeDndRuleActive(Z)V

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-eqz v2, :cond_b

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameManager:Landroid/app/GameManager;

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGamePackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/GameManager;->getGameMode(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameModeDndController:Lcom/google/android/systemui/gamedashboard/GameModeDndController;

    invoke-virtual {v5}, Lcom/google/android/systemui/gamedashboard/GameModeDndController;->isGameModeDndOn()Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskSurfaceHelper:Ljava/util/Optional;

    new-instance v7, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1, v2}, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v6, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mToast:Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-virtual {v6, v1, v2, v5}, Lcom/google/android/systemui/gamedashboard/ToastController;->showLaunchText(IIZ)V

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mIsImmersive:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAlwaysOn:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mInSplitScreen:Z

    if-nez v2, :cond_a

    move v3, v4

    :cond_a
    invoke-virtual {v1, v3}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->isFpsVisible()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->registerFps(I)V

    goto :goto_4

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    iget-boolean v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mInSplitScreen:Z

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    goto :goto_4

    :cond_c
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hide()V

    :cond_d
    :goto_4
    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getGamePackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGamePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getGameTaskId()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    :goto_0
    return p0
.end method

.method public getGameTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mGameTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public init(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setVisibilityChangedCallback(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setExcludeBackRegionCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isNavigationBarOverlayEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHasGameOverlay:Z

    return p0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    return-void
.end method

.method public registerListeners()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public setButtonState(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShortcutBarController:Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->setNavBarButtonState(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mShouldShow:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAlwaysOn:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    if-eqz p1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTranslateUpAnimationDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mNavBarMode:I

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->show(Z)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    :cond_4
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    const/4 p1, 0x1

    new-array p2, p1, [F

    const/4 v2, 0x0

    aput v1, p2, v2

    const-string v1, "translationY"

    invoke-static {v0, v1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTranslateDownAnimationDuration:I

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_7
    iget p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTranslateDownAnimationDuration:I

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/google/android/systemui/gamedashboard/EntryPointController$5;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController$5;-><init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    invoke-virtual {p2, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_8
    :goto_0
    return-void
.end method

.method public setCanShow(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mEntryPoint:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->setCanShow(Z)V

    return-void
.end method

.method public unregisterListeners()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mListenersRegistered:Z

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController;->mTaskStackListener:Lcom/google/android/systemui/gamedashboard/EntryPointController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
