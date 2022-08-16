.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $apps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic $iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $nonApps:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v1, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$apps:[Landroid/view/RemoteAnimationTarget;

    iget-object v2, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$nonApps:[Landroid/view/RemoteAnimationTarget;

    iget-object v3, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    sget v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->$r8$clinit:I

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v5, v1

    move v6, v0

    :cond_1
    if-ge v6, v5, :cond_3

    aget-object v9, v1, v6

    add-int/lit8 v6, v6, 0x1

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v10, :cond_2

    move v10, v8

    goto :goto_0

    :cond_2
    move v10, v0

    :goto_0
    if-eqz v10, :cond_1

    move-object v5, v9

    goto :goto_2

    :cond_3
    :goto_1
    move-object v5, v4

    :goto_2
    if-nez v5, :cond_5

    const-string v0, "ActivityLaunchAnimator"

    const-string v1, "Aborting the animation as no window is opening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onTimeout$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    :try_start_0
    invoke-interface {v3}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    goto/16 :goto_b

    :cond_5
    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    array-length v1, v2

    move v6, v0

    :cond_7
    if-ge v6, v1, :cond_9

    aget-object v9, v2, v6

    add-int/lit8 v6, v6, 0x1

    iget v10, v9, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v11, 0x7e3

    if-ne v10, v11, :cond_8

    move v10, v8

    goto :goto_4

    :cond_8
    move v10, v0

    :goto_4
    if-eqz v10, :cond_7

    move-object v6, v9

    goto :goto_6

    :cond_9
    :goto_5
    move-object v6, v4

    :goto_6
    iget-object v0, v5, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/systemui/animation/LaunchAnimator$State;

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    iget v13, v0, Landroid/graphics/Rect;->right:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x30

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFI)V

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->callback:Lcom/android/systemui/animation/ActivityLaunchAnimator$Callback;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, v5, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v1, :cond_a

    goto :goto_7

    :cond_a
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$24;->getBackgroundColor(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_7
    if-nez v4, :cond_b

    iget v0, v5, Landroid/view/RemoteAnimationTarget;->backgroundColor:I

    goto :goto_8

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_8
    move v9, v0

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->isDialogLaunch()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->dialogToAppAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    goto :goto_9

    :cond_c
    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->launchAnimator:Lcom/android/systemui/animation/LaunchAnimator;

    :goto_9
    move-object v10, v0

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v10, v0, v2}, Lcom/android/systemui/animation/LaunchAnimator;->isExpandingFullyAbove$frameworks__base__packages__SystemUI__animation__android_common__SystemUIAnimationLib(Landroid/view/ViewGroup;Lcom/android/systemui/animation/LaunchAnimator$State;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v0

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    :goto_a
    iput v0, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    iput v0, v2, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    iget-object v1, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    new-instance v11, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;

    iget-object v4, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    move-object v0, v11

    move-object v12, v2

    move-object v2, v4

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$controller$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Lcom/android/systemui/animation/ActivityLaunchAnimator;Landroid/view/IRemoteAnimationFinishedCallback;Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v10, v11, v12, v9, v8}, Lcom/android/systemui/animation/LaunchAnimator;->startAnimation(Lcom/android/systemui/animation/LaunchAnimator$Controller;Lcom/android/systemui/animation/LaunchAnimator$State;IZ)Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->animation:Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    :goto_b
    return-void
.end method
