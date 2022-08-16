.class public final synthetic Lcom/android/wm/shell/ShellInitImpl$InitImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellInitImpl$InitImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellInitImpl$InitImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellInitImpl$InitImpl;

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl$InitImpl;->this$0:Lcom/android/wm/shell/ShellInitImpl;

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayController;->mWmService:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayContainerListener:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Lcom/android/wm/shell/common/DisplayController;->onDisplayAdded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayInsetsController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDisplayImeController:Lcom/android/wm/shell/common/DisplayImeController;

    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayImeController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenTaskListener:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, -0x2

    aput v4, v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iput-object v1, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-virtual {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mAppPairsOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mBubblesOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mDragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, p0, Lcom/android/wm/shell/ShellInitImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mPlayerImpl:Lcom/android/wm/shell/transition/Transitions$TransitionPlayerImpl;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Landroid/window/TaskOrganizer;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V

    invoke-static {}, Landroid/window/TransitionMetrics;->getInstance()Landroid/window/TransitionMetrics;

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mUnfoldTransitionHandler:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mPipTouchHandlerOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mFreeformTaskListenerOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mFullscreenUnfoldController:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, v2}, Lcom/android/wm/shell/ShellInitImpl$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellInitImpl;->mKidsModeTaskOrganizer:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/ShellInitImpl;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iput-object p0, v0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    iget-object p0, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    if-nez p0, :cond_3

    new-instance p0, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    iget-object v1, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v1}, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p0, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    :cond_3
    iget-object p0, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    new-instance v1, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;

    const/4 v4, 0x6

    invoke-direct {v1, v4, v0}, Lcom/android/systemui/qs/external/CustomTile$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->updateKidsModeState()V

    iget-object p0, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mKidsModeSettingsObserver:Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;

    iget-object v1, p0, Lcom/android/wm/shell/kidsmode/KidsModeSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "navigation_mode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v2, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "nav_bar_kids_mode"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4, v2, p0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mUserSwitchIntentReceiver:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer$1;

    iget-object v0, v0, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p0, v3, v0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unable to register display controller"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
