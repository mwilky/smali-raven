.class public Lcom/android/wm/shell/ShellInitImpl;
.super Ljava/lang/Object;
.source "ShellInitImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/ShellInitImpl$InitImpl;
    }
.end annotation


# instance fields
.field private final mAppPairsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mBubblesOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

.field private final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field private final mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field private final mFreeformTaskListenerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

.field private final mFullscreenUnfoldController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mPipTouchHandlerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentTasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field private final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public static synthetic $r8$lambda$0_VEJ-5_3pUGu_rD0wyeu5DU67E(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/android/wm/shell/ShellInitImpl;->lambda$init$0(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qgnsn0PhA8MoypY66ECOlg_NIjM(Lcom/android/wm/shell/ShellInitImpl;Lcom/android/wm/shell/freeform/FreeformTaskListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellInitImpl;->lambda$init$1(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/ShellTaskOrganizer;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/startingsurface/StartingWindowController;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/ShellInitImpl$InitImpl;-><init>(Lcom/android/wm/shell/ShellInitImpl;Lcom/android/wm/shell/ShellInitImpl$1;)V

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mImpl:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    move-object v1, p1

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mBubblesOptional:Ljava/util/Optional;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mAppPairsOptional:Ljava/util/Optional;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mPipTouchHandlerOptional:Ljava/util/Optional;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenUnfoldController:Ljava/util/Optional;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mFreeformTaskListenerOptional:Ljava/util/Optional;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mRecentTasks:Ljava/util/Optional;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/wm/shell/ShellInitImpl;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/ShellInitImpl;)Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/ShellInitImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/ShellInitImpl;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayController;->initialize()V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayInsetsController;->initialize()V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/DisplayImeController;->startMonitorDisplays()V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, -0x2

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->initStartingWindow(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mAppPairsOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda6;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mBubblesOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->initialize(Ljava/util/Optional;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/transition/Transitions;->register(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mPipTouchHandlerOptional:Ljava/util/Optional;

    sget-object v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mFreeformTaskListenerOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/ShellInitImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenUnfoldController:Ljava/util/Optional;

    sget-object v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mRecentTasks:Ljava/util/Optional;

    sget-object v0, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$init$0(Lcom/android/wm/shell/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->init()V

    return-void
.end method

.method private synthetic lambda$init$1(Lcom/android/wm/shell/freeform/FreeformTaskListener;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x5

    aput v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    return-void
.end method


# virtual methods
.method public asShellInit()Lcom/android/wm/shell/ShellInit;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mImpl:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    return-object p0
.end method
