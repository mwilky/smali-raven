.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/WMComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WMComponentImpl"
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

.field public dynamicOverrideOptionalOfFreeformTaskListenerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

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

.field public dynamicOverrideOptionalOfFullscreenUnfoldControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

.field public dynamicOverrideOptionalOfOneHandedControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

.field public dynamicOverrideOptionalOfSplitScreenControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

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

.field public optionalOfAppPairsControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

.field public optionalOfBubbleControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

.field public optionalOfLegacySplitScreenControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

.field public optionalOfPipTouchHandlerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

.field public optionalOfShellUnfoldProgressProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

.field public provideAppPairsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/apppairs/AppPairsController;",
            ">;"
        }
    .end annotation
.end field

.field public provideAppPairsProvider2:Ljavax/inject/Provider;
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

.field public provideBubbleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/bubbles/BubbleController;",
            ">;"
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

.field public provideDisplayLayoutProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/DisplayLayout;",
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

.field public provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field public provideFreeformTaskListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/freeform/FreeformTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field public provideFreeformTaskListenerProvider2:Ljavax/inject/Provider;
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
            "Lcom/android/wm/shell/fullscreen/FullscreenUnfoldController;",
            ">;"
        }
    .end annotation
.end field

.field public provideFullscreenUnfoldControllerProvider2:Ljavax/inject/Provider;
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
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreenController;",
            ">;"
        }
    .end annotation
.end field

.field public provideLegacySplitScreenProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public provideOneHandedControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;"
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

.field public providePipBoundsStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
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

.field public providePipMotionHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
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

.field public providePipTouchHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            ">;"
        }
    .end annotation
.end field

.field public providePipTransitionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
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

.field public provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ">;"
        }
    .end annotation
.end field

.field public provideSharedBackgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
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

.field public provideShellMainExecutorSfVsyncAnimationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/animation/AnimationHandler;",
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

.field public provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

.field public provideSplashScreenExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public provideSplitScreenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
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

.field public provideStageTaskUnfoldControllerProvider:Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

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

.field public provideTaskSurfaceHelperControllerProvider:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;

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

.field public provideUnfoldBackgroundControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/unfold/UnfoldBackgroundController;",
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

.field public providesPipBoundsAlgorithmProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;"
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

.field public setShellMainThreadProvider:Ldagger/internal/InstanceFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;Landroid/os/HandlerThread;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p2 .. p2}, Ldagger/internal/InstanceFactory;->createNullable(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->setShellMainThreadProvider:Ldagger/internal/InstanceFactory;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    sget-object v4, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;

    new-instance v5, Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v2, v4, v6}, Lcom/android/systemui/util/RingerModeTrackerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/util/WallpaperController_Factory;

    const/4 v3, 0x5

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/util/WallpaperController_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSysUIMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;

    invoke-direct {v7, v4, v5, v2, v6}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideColumbusActionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;

    const/4 v8, 0x2

    invoke-direct {v7, v4, v5, v2, v8}, Lcom/android/systemui/statusbar/phone/DozeScrimController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    sget-object v4, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->ABSENT_JDK_OPTIONAL_PROVIDER:Ljavax/inject/Provider;

    iput-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/android/systemui/tv/TvSystemUIModule_ProvideRecentsFactory;

    invoke-direct {v9, v5, v2, v7, v8}, Lcom/android/systemui/tv/TvSystemUIModule_ProvideRecentsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransactionPoolFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v7 .. v12}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/SmartReplyStateInflaterImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/screenshot/ImageExporter_Factory;

    invoke-direct {v5, v3, v2}, Lcom/android/systemui/screenshot/ImageExporter_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static {v5, v7, v8, v2, v9}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;->create$2(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideSyncTransactionQueueFactory;

    invoke-direct {v7, v2, v5}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideSyncTransactionQueueFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    new-instance v2, Ldagger/internal/DelegateFactory;

    invoke-direct {v2}, Ldagger/internal/DelegateFactory;-><init>()V

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellAnimationExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v7 .. v13}, Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/window/StatusBarWindowController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v7 .. v13}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;

    const/4 v7, 0x3

    invoke-direct {v5, v2, v7}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideVibratorFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v9, Lcom/android/systemui/doze/DozePauser_Factory;

    const/4 v10, 0x4

    invoke-direct {v9, v5, v2, v8, v10}, Lcom/android/systemui/doze/DozePauser_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v9}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v15

    iput-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;

    const/16 v16, 0x1

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-static {v2, v5}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v8 .. v14}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideKidsModeTaskOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideKidsModeTaskOrganizerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideKidsModeTaskOrganizerProvider:Ljavax/inject/Provider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;

    invoke-direct {v5, v2, v3}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayLayoutFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayLayoutFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayLayoutProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideInteractionJankMonitorProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    invoke-static/range {v8 .. v16}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideOneHandedControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideOneHandedControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfOneHandedControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSharedBackgroundHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSharedBackgroundHandlerFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/dreams/dagger/DreamModule_ProvidesDreamBackendFactory;

    invoke-direct {v3, v2, v7}, Lcom/android/systemui/dreams/dagger/DreamModule_ProvidesDreamBackendFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSharedBackgroundExecutorProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/ActivityStarterDelegate_Factory;

    invoke-direct {v3, v2, v7}, Lcom/android/systemui/ActivityStarterDelegate_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v24, v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskViewTransitionsProvider:Ljavax/inject/Provider;

    iget-object v8, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v10, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideWindowManagerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v13, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUserManagerProvider:Ljavax/inject/Provider;

    iget-object v14, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideLauncherAppsProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfOneHandedControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSharedBackgroundExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    move-object/from16 v25, v2

    invoke-static/range {v8 .. v25}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideBubbleControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideBubbleControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfBubbleControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;

    invoke-direct {v5, v2, v3, v6}, Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfShellUnfoldProgressProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldBackgroundControllerFactory;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideUnfoldBackgroundControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideUnfoldBackgroundControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfShellUnfoldProgressProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v9, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

    const/4 v14, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideStageTaskUnfoldControllerProvider:Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v2

    invoke-static/range {v14 .. v26}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideSplitScreenControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/globalactions/GlobalActionsImpl_Factory;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideSplitScreenControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfSplitScreenControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v2, v6}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    new-instance v2, Lcom/android/wm/shell/dagger/WMShellModule_ProvideAppPairsFactory;

    const/4 v12, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideAppPairsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideAppPairsProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/broadcast/PendingRemovalStore_Factory;

    const/4 v5, 0x4

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/broadcast/PendingRemovalStore_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/google/android/systemui/columbus/gates/Proximity_Factory;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v3, v6}, Lcom/google/android/systemui/columbus/gates/Proximity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/volume/VolumeUI_Factory;

    const/4 v6, 0x4

    invoke-direct {v5, v2, v3, v6}, Lcom/android/systemui/volume/VolumeUI_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v3, v6}, Lcom/android/systemui/media/LocalMediaManagerFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v12

    iput-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v7, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    invoke-static/range {v7 .. v14}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipPhoneMenuControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidesPipPhoneMenuControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipSnapAlgorithmFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipSnapAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    new-instance v6, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;

    const/4 v7, 0x2

    invoke-direct {v6, v3, v5, v2, v7}, Lcom/android/systemui/media/ResumeMediaBrowserFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v6}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionStateFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionStateFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidePipSurfaceTransactionHelperFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/media/MediaFlags_Factory;

    const/4 v5, 0x2

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/media/MediaFlags_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v9

    iput-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    invoke-static/range {v6 .. v15}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTransitionControllerFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    sget-object v2, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipParamsChangedForwarderFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipParamsChangedForwarderFactory;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    move-object/from16 p2, v4

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    invoke-static/range {v5 .. v19}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTaskOrganizerFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTaskOrganizerFactory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipSnapAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    new-instance v10, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipMotionHelperFactory;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipMotionHelperFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v10}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipMotionHelperProvider:Ljavax/inject/Provider;

    iget-object v11, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFloatingContentCoordinatorProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-static/range {v11 .. v19}, Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/tiles/FlashlightTile_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfPipTouchHandlerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    iget-object v4, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfShellUnfoldProgressProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideUnfoldBackgroundControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v10, Lcom/android/systemui/qs/QSFooterViewController_Factory;

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/qs/QSFooterViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v10}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFullscreenUnfoldControllerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v4, v3}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfFullscreenUnfoldControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfShellUnfoldProgressProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    new-instance v5, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v3, v6}, Lcom/android/systemui/controls/ui/ControlsActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFullscreenUnfoldControllerProvider2:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;

    invoke-direct {v7, v4, v5, v3, v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfShellUnfoldProgressProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;

    const/4 v5, 0x5

    invoke-direct {v4, v3, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFreeformTaskListenerProvider:Ljavax/inject/Provider;

    new-instance v4, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v4, v3}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfFreeformTaskListenerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/tracing/ProtoTracer_Factory;

    const/4 v6, 0x4

    invoke-direct {v5, v4, v3, v6}, Lcom/android/systemui/tracing/ProtoTracer_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFreeformTaskListenerProvider2:Ljavax/inject/Provider;

    sget-object v3, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory$InstanceHolder;->INSTANCE:Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideSplashScreenExecutorFactory;

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSplashScreenExecutorProvider:Ljavax/inject/Provider;

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/qs/logging/QSLogger_Factory;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/qs/logging/QSLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v3, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSplashScreenExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/systemui/assist/ui/DefaultUiController_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/assist/ui/DefaultUiController_Factory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    move-object/from16 v19, v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideKidsModeTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfBubbleControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfPipTouchHandlerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFullscreenUnfoldControllerProvider2:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideFreeformTaskListenerProvider2:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v20, v2

    invoke-static/range {v3 .. v20}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellInitImplFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellInitImplProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/qs/external/CustomTileStatePersister_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/util/NotificationChannels_Factory;

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/util/NotificationChannels_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v15

    iput-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorSfVsyncAnimationHandlerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v5 .. v15}, Lcom/android/wm/shell/dagger/WMShellModule_ProvideLegacySplitScreenFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellModule_ProvideLegacySplitScreenFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideLegacySplitScreenProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    invoke-direct {v3, v2}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;-><init>(Ljavax/inject/Provider;)V

    iput-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAppOpsListenerFactory;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v4, v6}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipAppOpsListenerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->dynamicOverrideOptionalOfOneHandedControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    new-instance v3, Lcom/google/android/systemui/autorotate/DataLogger_Factory;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lcom/google/android/systemui/autorotate/DataLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    iget-object v5, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipBoundsStateProvider:Ljavax/inject/Provider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesPipPhoneMenuControllerProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTouchHandlerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipTransitionControllerProvider:Ljavax/inject/Provider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    iget-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    invoke-static/range {v5 .. v19}, Lcom/android/systemui/theme/ThemeOverlayController_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/theme/ThemeOverlayController_Factory;

    move-result-object v1

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    iget-object v4, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/google/android/systemui/columbus/gates/ChargingState_Factory;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v3, v4, v6}, Lcom/google/android/systemui/columbus/gates/ChargingState_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    iget-object v7, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v8, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideKidsModeTaskOrganizerProvider:Ljavax/inject/Provider;

    iget-object v9, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v10, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    iget-object v11, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    iget-object v12, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    iget-object v14, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    iget-object v15, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v16, v2

    invoke-static/range {v7 .. v16}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellCommandHandlerImplFactory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellCommandHandlerImplFactory;

    move-result-object v2

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerImplProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/columbus/gates/VrMode_Factory;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Lcom/google/android/systemui/columbus/gates/VrMode_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/screenshot/ImageTileSet_Factory;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v2}, Lcom/android/systemui/screenshot/ImageTileSet_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfLegacySplitScreenControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    new-instance v3, Lcom/google/android/systemui/columbus/gates/PowerSaveState_Factory;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v5}, Lcom/google/android/systemui/columbus/gates/PowerSaveState_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideLegacySplitScreenProvider2:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/usb/StorageNotification_Factory;

    const/4 v5, 0x7

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/usb/StorageNotification_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfAppPairsControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    new-instance v3, Lcom/android/systemui/media/MediaUiEventLogger_Factory;

    const/4 v6, 0x5

    invoke-direct {v3, v6, v2}, Lcom/android/systemui/media/MediaUiEventLogger_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideAppPairsProvider2:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->optionalOfBubbleControllerProvider:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$PresentJdkOptionalInstanceProvider;

    new-instance v3, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;

    const/4 v6, 0x0

    invoke-direct {v3, v2, v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBubblesFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v5}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$$ExternalSyntheticOutline0;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    iget-object v6, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskViewTransitionsProvider:Ljavax/inject/Provider;

    new-instance v7, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;

    invoke-direct {v7, v2, v3, v5, v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskViewFactoryControllerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-static {v7}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/accessibility/ModeSwitchesController_Factory;

    const/4 v5, 0x4

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/accessibility/ModeSwitchesController_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRemoteTransitionsFactory;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRemoteTransitionsFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;

    const/4 v5, 0x5

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/usb/UsbConfirmActivity_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideStartingSurfaceProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/ActivityIntentHelper_Factory;

    const/4 v5, 0x3

    invoke-direct {v3, v5, v2}, Lcom/android/systemui/ActivityIntentHelper_Factory;-><init>(ILjava/lang/Object;)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRootDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v6}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDisplayAreaHelperFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayAreaHelperProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellTaskOrganizerProvider:Ldagger/internal/DelegateFactory;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v3, v6}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    iput-object v5, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskSurfaceHelperControllerProvider:Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;

    new-instance v2, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskSurfaceHelperFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskSurfaceHelperFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskSurfaceHelperProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/systemui/media/MediaCarouselControllerLogger_Factory;

    const/4 v5, 0x5

    invoke-direct {v3, v2, v5}, Lcom/android/systemui/media/MediaCarouselControllerLogger_Factory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIFactory;-><init>(Ljavax/inject/Provider;I)V

    invoke-static {v3}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideCompatUIProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    invoke-static {v2, v4}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$CoordinatorsSubcomponentImpl$$ExternalSyntheticOutline0;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDragAndDropProvider:Ljavax/inject/Provider;

    iget-object v1, v1, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->contextProvider:Ljavax/inject/Provider;

    iget-object v2, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    iget-object v3, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;

    new-instance v5, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v2, v3, v6}, Lcom/google/android/systemui/columbus/actions/LaunchOverview_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    invoke-static {v5}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideBackAnimationControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v4}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$SysUIComponentImpl$$ExternalSyntheticOutline2;->m(Ljavax/inject/Provider;I)Ljavax/inject/Provider;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideBackAnimationProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideAppPairsProvider2:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideBackAnimationProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideBubblesProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideCompatUIProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDisplayAreaHelperProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideDragAndDropProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideHideDisplayCutoutProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideLegacySplitScreenProvider2:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideOneHandedProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRecentTasksProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getShellInit()Lcom/android/wm/shell/ShellInit;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideSplitScreenProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideStartingSurfaceProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskSurfaceHelperProvider:Ljavax/inject/Provider;

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

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideTaskViewFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method

.method public final getTransitions()Lcom/android/wm/shell/transition/ShellTransitions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$WMComponentImpl;->provideRemoteTransitionsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/ShellTransitions;

    return-object p0
.end method
