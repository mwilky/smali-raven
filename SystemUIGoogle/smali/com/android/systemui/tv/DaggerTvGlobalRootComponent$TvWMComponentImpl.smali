.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/tv/TvWMComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TvWMComponentImpl"
.end annotation


# instance fields
.field public dynamicOverrideOptionalOfDisplayImeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;>;"
        }
    .end annotation
.end field

.field public dynamicOverrideOptionalOfFreeformTaskListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public dynamicOverrideOptionalOfFullscreenTaskListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public dynamicOverrideOptionalOfFullscreenUnfoldControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;",
            ">;>;"
        }
    .end annotation
.end field

.field public dynamicOverrideOptionalOfOneHandedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;"
        }
    .end annotation
.end field

.field public dynamicOverrideOptionalOfSplitScreenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field public dynamicOverrideOptionalOfStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;",
            ">;>;"
        }
    .end annotation
.end field

.field public optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;>;"
        }
    .end annotation
.end field

.field public optionalOfBubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;>;"
        }
    .end annotation
.end field

.field public optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field public optionalOfPipTouchHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field public optionalOfShellUnfoldProgressProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideAppPairsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideBackAnimationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimationController;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideBackAnimationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimation;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideBubblesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideCompatUIControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/compatui/CompatUIController;",
            ">;"
        }
    .end annotation
.end field

.field public provideCompatUIProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/compatui/CompatUI;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideDisplayAreaHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/displayareahelper/DisplayAreaHelper;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideDisplayControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field public provideDisplayImeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayImeController;",
            ">;"
        }
    .end annotation
.end field

.field public provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            ">;"
        }
    .end annotation
.end field

.field public provideDragAndDropControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            ">;"
        }
    .end annotation
.end field

.field public provideDragAndDropProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDrop;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideFreeformTaskListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field public provideFullscreenUnfoldControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutoutController;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideHideDisplayCutoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideIconProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/launcher3/icons/IconProvider;",
            ">;"
        }
    .end annotation
.end field

.field public provideKidsModeTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field public provideLegacySplitScreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideOneHandedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;>;"
        }
    .end annotation
.end field

.field public providePipAnimationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;"
        }
    .end annotation
.end field

.field public providePipAppOpsListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipAppOpsListener;",
            ">;"
        }
    .end annotation
.end field

.field public providePipMediaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipMediaController;",
            ">;"
        }
    .end annotation
.end field

.field public providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            ">;"
        }
    .end annotation
.end field

.field public providePipProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;>;"
        }
    .end annotation
.end field

.field public providePipSnapAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipSnapAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;"
        }
    .end annotation
.end field

.field public providePipTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field public providePipTransitionStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            ">;"
        }
    .end annotation
.end field

.field public providePipUiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            ">;"
        }
    .end annotation
.end field

.field public provideRecentTasksControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideRecentTasksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasks;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideRemoteTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/transition/ShellTransitions;",
            ">;"
        }
    .end annotation
.end field

.field public provideRootDisplayAreaOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/RootDisplayAreaOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field public provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public provideShellAnimationExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public provideShellCommandHandlerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellCommandHandlerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public provideShellCommandHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideShellInitImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellInitImpl;",
            ">;"
        }
    .end annotation
.end field

.field public provideShellInitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellInit;",
            ">;"
        }
    .end annotation
.end field

.field public provideShellMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public provideShellMainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public provideShellTaskOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field public provideSplashScreenExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public provideSplitScreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideStartingSurfaceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideStartingWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowController;",
            ">;"
        }
    .end annotation
.end field

.field public provideStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public provideStartingWindowTypeAlgorithmProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public provideSyncTransactionQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            ">;"
        }
    .end annotation
.end field

.field public provideSysUIMainExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public provideSystemWindowsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/SystemWindows;",
            ">;"
        }
    .end annotation
.end field

.field public provideTaskSurfaceHelperControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelperController;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideTaskSurfaceHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/TaskViewFactoryController;",
            ">;"
        }
    .end annotation
.end field

.field public provideTaskViewFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideTaskViewTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/TaskViewTransitions;",
            ">;"
        }
    .end annotation
.end field

.field public provideTransactionPoolProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TransactionPool;",
            ">;"
        }
    .end annotation
.end field

.field public provideTransitionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/transition/Transitions;",
            ">;"
        }
    .end annotation
.end field

.field public provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public provideTvPipBoundsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsController;",
            ">;"
        }
    .end annotation
.end field

.field public provideTvPipBoundsStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsState;",
            ">;"
        }
    .end annotation
.end field

.field public provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/tv/TvPipNotificationController;",
            ">;"
        }
    .end annotation
.end field

.field public provideTvPipTransitionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            ">;"
        }
    .end annotation
.end field

.field public provideUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldTransitionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public providerTaskStackListenerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public providesOneHandedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;>;"
        }
    .end annotation
.end field

.field public providesSplitScreenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;>;"
        }
    .end annotation
.end field

.field public providesTvPipMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            ">;"
        }
    .end annotation
.end field

.field public setShellMainThreadProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->initialize(Landroid/os/HandlerThread;)V

    return-void
.end method


# virtual methods
.method public final getAppPairs()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideAppPairsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getBackAnimation()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/back/BackAnimation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBackAnimationProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getBubbles()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getCompatUI()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/compatui/CompatUI;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideCompatUIProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getDisplayAreaHelper()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/displayareahelper/DisplayAreaHelper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayAreaHelperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getDragAndDrop()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/draganddrop/DragAndDrop;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getHideDisplayCutout()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getLegacySplitScreen()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideLegacySplitScreenProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getOneHanded()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getPip()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getRecentTasks()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasks;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getShellCommandHandler()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getShellInit()Lcom/android/wm/shell/ShellInit;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellInit;

    return-object p0
.end method

.method public final getSplitScreen()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreen;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getStartingSurface()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/startingsurface/StartingSurface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingSurfaceProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getTaskSurfaceHelper()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskSurfaceHelperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getTaskViewFactory()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/TaskViewFactory;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getTransitions()Lcom/android/wm/shell/transition/ShellTransitions;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/ShellTransitions;

    return-object p0
.end method

.method public final bridge synthetic init()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/dagger/WMComponent;->init()V

    return-void
.end method

.method public final initialize(Landroid/os/HandlerThread;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Ldagger/internal/InstanceFactory;->createNullable(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->setShellMainThreadProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    sget-object v3, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;

    new-instance v4, Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v1, v3, v5}, Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/util/WallpaperController_Factory;

    const/4 v2, 0x5

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/util/WallpaperController_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSysUIMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;

    invoke-direct {v6, v3, v4, v1, v5}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v4, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;

    const/4 v7, 0x2

    invoke-direct {v6, v4, v3, v1, v7}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    sget-object v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v8, Lcom/android/systemui/tv/TvSystemUIModule_ProvideRecentsFactory;

    invoke-direct {v8, v4, v1, v6, v7}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideRecentsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v8}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v9, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v8 .. v13}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/screenshot/ImageExporter_Factory;

    invoke-direct {v4, v2, v1}, Lcom/android/systemui/screenshot/ImageExporter_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v6, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v6, v8, v4, v1, v9}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create$2(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideSyncTransactionQueueFactory;

    invoke-direct {v6, v1, v4}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideSyncTransactionQueueFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    new-instance v1, Ldagger/internal/DelegateFactory;

    invoke-direct {v1}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellAnimationExecutorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v11, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v8 .. v14}, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v8, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v8 .. v14}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;

    const/4 v6, 0x3

    invoke-direct {v4, v1, v6}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v8, Lcom/android/systemui/doze/DozePauser_Factory;

    const/4 v9, 0x4

    invoke-direct {v8, v4, v1, v6, v9}, Lcom/android/systemui/doze/DozePauser_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v8}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v12, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;

    const/4 v15, 0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-static {v1, v4}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v12, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    invoke-static/range {v10 .. v16}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideKidsModeTaskOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideKidsModeTaskOrganizerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideKidsModeTaskOrganizerProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfBubbleControllerProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;

    invoke-direct {v4, v3, v1, v5}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfPipTouchHandlerProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfFullscreenUnfoldControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v4, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfShellUnfoldProgressProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfFullscreenUnfoldControllerProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;

    invoke-direct {v6, v1, v4, v7}, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullscreenUnfoldControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    new-instance v10, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;

    invoke-direct {v10, v4, v6, v1, v8}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v10}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfShellUnfoldProgressProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v10, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;

    invoke-direct {v10, v1, v4, v6, v8}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v10}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfFreeformTaskListenerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/tracing/ProtoTracer_Factory;

    invoke-direct {v4, v3, v1, v9}, Lcom/android/systemui/tracing/ProtoTracer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFreeformTaskListenerProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplashScreenExecutorProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/TvWMShellModule_ProvideStartingWindowTypeAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/TvWMShellModule_ProvideStartingWindowTypeAlgorithmFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v4, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/qs/logging/QSLogger_Factory;

    invoke-direct {v1, v4, v2}, Lcom/android/systemui/qs/logging/QSLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowTypeAlgorithmProvider2:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplashScreenExecutorProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    invoke-static {v4, v6, v1, v8, v10}, Lcom/android/systemui/assist/ui/DefaultUiController_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/ui/DefaultUiController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    move-object/from16 v26, v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideKidsModeTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfBubbleControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfPipTouchHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullscreenUnfoldControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFreeformTaskListenerProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v27, v1

    invoke-static/range {v10 .. v27}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitImplFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitImplProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    iput-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/util/WallpaperController_Factory;

    invoke-direct {v2, v1, v9}, Lcom/android/systemui/util/WallpaperController_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipSnapAlgorithmFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSnapAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;

    invoke-direct {v6, v2, v4, v1, v5}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v11, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;

    const/4 v15, 0x1

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/volume/VolumeUI_Factory;

    invoke-direct {v4, v1, v2, v9}, Lcom/android/systemui/volume/VolumeUI_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/google/android/systemui/columbus/gates/Proximity_Factory;

    invoke-direct {v4, v1, v2, v7}, Lcom/google/android/systemui/columbus/gates/Proximity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v11, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidesTvPipMenuControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTransitionStateFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTransitionStateFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider_Factory;

    invoke-direct {v2, v1, v9}, Lcom/android/systemui/keyguard/LifecycleScreenStatusProvider_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/wm/shell/dagger/WMShellModule_ProvideAppPairsFactory;

    const/16 v17, 0x1

    move-object v10, v2

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideAppPairsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipParamsChangedForwarderFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipParamsChangedForwarderFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    invoke-direct {v4, v2, v1, v7}, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v5, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    move-object/from16 p1, v3

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v20, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;

    move-object/from16 v18, v4

    move-object/from16 v4, v20

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v4 .. v19}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipTaskOrganizerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static/range {v20 .. v20}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/android/systemui/telephony/TelephonyListenerManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v3}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v18, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipFactory;

    move-object/from16 v17, v2

    move-object/from16 v2, v18

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Lcom/android/wm/shell/dagger/TvPipModule_ProvidePipFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static/range {v18 .. v18}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfOneHandedControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfOneHandedControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/google/android/systemui/autorotate/DataLogger_Factory;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/google/android/systemui/autorotate/DataLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/google/android/systemui/columbus/gates/ChargingState_Factory;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v3, v5}, Lcom/google/android/systemui/columbus/gates/ChargingState_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideKidsModeTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v2 .. v11}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellCommandHandlerImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellCommandHandlerImplFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerImplProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/google/android/systemui/columbus/gates/VrMode_Factory;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lcom/google/android/systemui/columbus/gates/VrMode_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/screenshot/ImageTileSet_Factory;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v1}, Lcom/android/systemui/screenshot/ImageTileSet_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/google/android/systemui/columbus/gates/PowerSaveState_Factory;

    const/4 v4, 0x3

    invoke-direct {v2, v1, v4}, Lcom/google/android/systemui/columbus/gates/PowerSaveState_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideLegacySplitScreenProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/usb/StorageNotification_Factory;

    const/4 v4, 0x7

    invoke-direct {v2, v1, v4}, Lcom/android/systemui/usb/StorageNotification_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfAppPairsControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/media/MediaUiEventLogger_Factory;

    const/4 v5, 0x5

    invoke-direct {v2, v5, v1}, Lcom/android/systemui/media/MediaUiEventLogger_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideAppPairsProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->optionalOfBubbleControllerProvider:Ljavax/inject/Provider;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$$ExternalSyntheticOutline4;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v4}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$$ExternalSyntheticOutline0;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/ActivityStarterDelegate_Factory;

    const/4 v5, 0x3

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/ActivityStarterDelegate_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewTransitionsProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewTransitionsProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;

    invoke-direct {v7, v1, v4, v5, v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/accessibility/ModeSwitchesController_Factory;

    const/4 v5, 0x4

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/accessibility/ModeSwitchesController_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRemoteTransitionsFactory;

    invoke-direct {v4, v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRemoteTransitionsFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingSurfaceProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/ActivityIntentHelper_Factory;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v1}, Lcom/android/systemui/ActivityIntentHelper_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;

    invoke-direct {v5, v1, v4, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayAreaHelperProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;

    const/4 v6, 0x2

    invoke-direct {v5, v1, v4, v6}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    iput-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskSurfaceHelperControllerProvider:Ljavax/inject/Provider;

    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskSurfaceHelperFactory;

    invoke-direct {v1, v5, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskSurfaceHelperFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskSurfaceHelperProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/media/MediaCarouselControllerLogger_Factory;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/media/MediaCarouselControllerLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;

    invoke-direct {v4, v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideCompatUIProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v3}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$CoordinatorsSubcomponentImpl$$ExternalSyntheticOutline0;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropProvider:Ljavax/inject/Provider;

    sget-object v1, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSharedBackgroundHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSharedBackgroundHandlerFactory;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v2, v4, v6}, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBackAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v3}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$$ExternalSyntheticOutline2;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBackAnimationProvider:Ljavax/inject/Provider;

    return-void
.end method
