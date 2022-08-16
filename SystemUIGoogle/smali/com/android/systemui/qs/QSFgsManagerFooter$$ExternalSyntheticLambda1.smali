.class public final synthetic Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mCancelTimerRunnable:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TimeoutToUserZero"

    const-string/jumbo v1, "switching to user 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->logoutUser()I

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler$PipResizeInputEventReceiver;

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->areActiveLocationRequests()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationShadeWindowController"

    const-string v2, "Failed to call setHasTopUi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUiChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->mHasTopUi:Z

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->handleConfigurationChanged()V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    sget-boolean v0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->DEBUG:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/dialog/InternetDialog;->updateDialog(Z)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;

    invoke-static {p0}, Lcom/android/systemui/dreams/DreamOverlayContainerViewController;->$r8$lambda$Oxvj_GJUc06UJC_m7GrRwIKFrUA(Lcom/android/systemui/dreams/DreamOverlayContainerViewController;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/LockIconViewController;

    sget v0, Lcom/android/keyguard/LockIconViewController;->sLockIconRadiusPx:I

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->onLongPress()V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/QSFgsManagerFooter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumPackages:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f110004

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFooterText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumberView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumPackages:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v2, v0, Lcom/android/systemui/qs/FgsManagerController;->dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mNumPackages:I

    const/16 v3, 0x8

    if-lez v2, :cond_2

    iget-boolean v0, v0, Lcom/android/systemui/qs/FgsManagerController;->isAvailable:Z

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mFgsManagerController:Lcom/android/systemui/qs/FgsManagerController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/FgsManagerController;->showFooterDot:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/android/systemui/qs/FgsManagerController;->changesSinceDialog:Z

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mDotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mCollapsedDotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    invoke-interface {v0}, Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;->onVisibilityChanged()V

    :cond_4
    return-void

    :goto_4
    iget-object p0, p0, Lcom/android/systemui/qs/QSFgsManagerFooter$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;

    sget v0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility$1;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->isCameraShowing()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    if-eq v1, v0, :cond_5

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/CameraVisibility;->mCameraShowing:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
