.class public final Lcom/android/systemui/qs/QSSecurityFooter;
.super Lcom/android/systemui/util/ViewController;
.source "QSSecurityFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;,
        Lcom/android/systemui/qs/QSSecurityFooter$H;,
        Lcom/android/systemui/qs/QSSecurityFooter$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Landroid/view/View;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field public mContext:Landroid/content/Context;

.field public mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mFooterIconId:I

.field public final mFooterText:Landroid/widget/TextView;

.field public mFooterTextContent:Ljava/lang/String;

.field public mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field public mIsVisible:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda8;

.field public mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda10;

.field public mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda7;

.field public mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda12;

.field public mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;

.field public mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda14;

.field public mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda6;

.field public mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

.field public mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda18;

.field public mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda19;

.field public final mPrimaryFooterIcon:Landroid/widget/ImageView;

.field public mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

.field public final mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

.field public final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public final mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

.field public final mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda20;

.field public mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

.field public mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda9;

.field public mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda11;

.field public mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

.field public mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;


# direct methods
.method public static -$$Nest$mhandleRefreshState(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v2}, Lcom/android/systemui/settings/UserTracker;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v3

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v11}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v11

    iget-object v12, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v12}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v12

    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v13}, Lcom/android/systemui/statusbar/policy/SecurityController;->isProfileOwnerOfOrganizationOwnedDevice()Z

    move-result v13

    iget-object v14, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v14}, Lcom/android/systemui/statusbar/policy/SecurityController;->isParentalControlsEnabled()Z

    move-result v14

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v15}, Lcom/android/systemui/statusbar/policy/SecurityController;->isWorkProfileOn()Z

    move-result v15

    if-nez v7, :cond_2

    if-nez v10, :cond_2

    if-eqz v3, :cond_1

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v16, 0x1

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_5

    :cond_3
    if-nez v6, :cond_5

    if-nez v9, :cond_5

    if-nez v13, :cond_5

    if-nez v14, :cond_5

    if-eqz v16, :cond_4

    if-eqz v15, :cond_4

    goto :goto_3

    :cond_4
    move v2, v4

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    const v5, 0x7f0b02a5

    if-eqz v2, :cond_7

    if-eqz v13, :cond_7

    if-eqz v16, :cond_6

    if-nez v15, :cond_7

    :cond_6
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_7
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const/4 v2, 0x0

    if-eqz v14, :cond_8

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1305dc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_8
    if-nez v1, :cond_14

    if-nez v6, :cond_10

    if-eqz v7, :cond_9

    if-eqz v15, :cond_9

    goto/16 :goto_7

    :cond_9
    if-nez v9, :cond_c

    if-eqz v10, :cond_a

    if-eqz v15, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    if-eqz v8, :cond_b

    if-eqz v15, :cond_b

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;

    const-string v4, "SystemUi.QS_MSG_WORK_PROFILE_NETWORK"

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_b
    if-eqz v13, :cond_13

    invoke-virtual {v0, v12}, Lcom/android/systemui/qs/QSSecurityFooter;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_c
    :goto_6
    if-eqz v9, :cond_d

    if-eqz v10, :cond_d

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1305de

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_d
    if-eqz v10, :cond_e

    if-eqz v15, :cond_e

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda28;

    invoke-direct {v3, v0, v10}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda28;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const-string v5, "SystemUi.QS_MSG_WORK_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_e
    if-eqz v9, :cond_13

    if-eqz v3, :cond_f

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda29;

    invoke-direct {v3, v0, v9}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda29;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const-string v5, "SystemUi.QS_MSG_PERSONAL_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_f
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1305db

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_10
    :goto_7
    if-eqz v7, :cond_12

    if-eqz v15, :cond_12

    if-nez v12, :cond_11

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    const-string v4, "SystemUi.QS_MSG_WORK_PROFILE_MONITORING"

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_11
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda27;

    invoke-direct {v3, v0, v12}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda27;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    const-string v5, "SystemUi.QS_MSG_NAMED_WORK_PROFILE_MONITORING"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_12
    if-eqz v6, :cond_13

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v3, 0x7f1305d5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_13
    move-object v1, v2

    goto/16 :goto_b

    :cond_14
    if-nez v6, :cond_1c

    if-nez v7, :cond_1c

    if-eqz v8, :cond_15

    goto/16 :goto_a

    :cond_15
    if-nez v9, :cond_17

    if-eqz v10, :cond_16

    goto :goto_8

    :cond_16
    invoke-virtual {v0, v11}, Lcom/android/systemui/qs/QSSecurityFooter;->getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_17
    :goto_8
    if-eqz v9, :cond_19

    if-eqz v10, :cond_19

    if-nez v11, :cond_18

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda14;

    const-string v4, "SystemUi.QS_MSG_MANAGEMENT_MULTIPLE_VPNS"

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_18
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda22;

    invoke-direct {v3, v0, v11}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda22;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const-string v5, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MULTIPLE_VPNS"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_19
    if-eqz v9, :cond_1a

    move-object v1, v9

    goto :goto_9

    :cond_1a
    move-object v1, v10

    :goto_9
    if-nez v11, :cond_1b

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda23;

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda23;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const-string v1, "SystemUi.QS_MSG_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v3, v1, v4, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_1b
    const/4 v6, 0x0

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda24;

    invoke-direct {v4, v0, v11, v1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda24;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v1, "SystemUi.QS_MSG_NAMED_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v3, v1, v4, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_1c
    :goto_a
    if-nez v11, :cond_1d

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;

    const-string v4, "SystemUi.QS_MSG_MANAGEMENT_MONITORING"

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_1d
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda25;

    invoke-direct {v3, v0, v11}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda25;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const-string v5, "SystemUi.QS_MSG_NAMED_MANAGEMENT_MONITORING"

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    iput-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/String;

    const v1, 0x7f080566

    if-nez v9, :cond_1e

    if-eqz v10, :cond_20

    :cond_1e
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v1

    if-eqz v1, :cond_1f

    const v1, 0x7f08080c

    goto :goto_c

    :cond_1f
    const v1, 0x7f080823

    :cond_20
    :goto_c
    iget v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v3, v1, :cond_21

    iput v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    :cond_21
    if-eqz v14, :cond_22

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getIcon(Landroid/app/admin/DeviceAdminInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_d

    :cond_22
    iput-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_23
    :goto_d
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "QSSecurityFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda12;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/util/ViewController;I)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda13;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda14;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda14;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMultipleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda14;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileMonitoringStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda15;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda16;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda18;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda18;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda19;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda20;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda20;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda20;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda7;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda7;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda8;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda9;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda10;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda11;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdatePrimaryIcon:Lcom/android/systemui/qs/QSSecurityFooter$2;

    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Lcom/android/systemui/qs/QSSecurityFooter$3;

    const v0, 0x7f0b02a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    const v0, 0x7f0b0501

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mPrimaryFooterIcon:Landroid/widget/ImageView;

    const v0, 0x7f080566

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    new-instance p1, Lcom/android/systemui/qs/QSSecurityFooter$H;

    invoke-direct {p1, p0, p7}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p6, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iput-object p8, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method


# virtual methods
.method public createDialogView()Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isParentalControlsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0e01f0

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceAdminInfo()Landroid/app/admin/DeviceAdminInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getIcon(Landroid/app/admin/DeviceAdminInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    const v4, 0x7f0b04d7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v3, 0x7f0b04d8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLabel(Landroid/app/admin/DeviceAdminInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v1

    iget-object v4, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v10}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0e01ef

    invoke-virtual {v11, v12, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0b020a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v14, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v15, 0x7f1304a2

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v5, v2, v3

    aput-object v5, v2, v13

    invoke-virtual {v14, v15, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    new-instance v14, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;

    invoke-direct {v14, v0, v5}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;)V

    new-array v15, v13, [Ljava/lang/Object;

    aput-object v5, v15, v3

    const-string v5, "SystemUi.QS_DIALOG_NAMED_MANAGEMENT"

    invoke-virtual {v2, v5, v14, v15}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda7;

    const-string v14, "SystemUi.QS_DIALOG_MANAGEMENT"

    invoke-virtual {v2, v14, v5}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const v5, 0x7f0b0209

    const/16 v14, 0x8

    if-nez v2, :cond_5

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0b020b

    invoke-virtual {v11, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mShouldUseSettingsButton:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    if-nez v6, :cond_6

    if-nez v7, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda8;

    const-string v7, "SystemUi.QS_DIALOG_MANAGEMENT_CA_CERT"

    invoke-virtual {v5, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda9;

    const-string v7, "SystemUi.QS_DIALOG_WORK_PROFILE_CA_CERT"

    invoke-virtual {v5, v7, v6}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v5, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v6, 0x7f130494

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const v6, 0x7f0b0151

    const v7, 0x7f0b0152

    if-nez v5, :cond_9

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x7f0b0153

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v15}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v15}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v15

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleCaCertStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda17;

    const-string v13, "SystemUi.QS_DIALOG_MONITORING_CA_CERT_SUBTITLE"

    invoke-virtual {v15, v13, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-nez v8, :cond_a

    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda10;

    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_NETWORK"

    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_b
    iget-object v6, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mWorkProfileDialogNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda11;

    const-string v8, "SystemUi.QS_DIALOG_WORK_PROFILE_NETWORK"

    invoke-virtual {v6, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    const v7, 0x7f0b0489

    const v8, 0x7f0b048a

    if-nez v6, :cond_c

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_c
    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    const v7, 0x7f0b048b

    invoke-virtual {v11, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v13, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v13}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v13

    iget-object v15, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleNetworkStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda18;

    const-string v8, "SystemUi.QS_DIALOG_MONITORING_NETWORK_SUBTITLE"

    invoke-virtual {v13, v8, v15}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    if-nez v9, :cond_d

    if-nez v10, :cond_d

    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_d
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_TWO_NAMED_VPN"

    if-eqz v1, :cond_10

    if-eqz v9, :cond_e

    if-eqz v10, :cond_e

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v9, v10}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Ljava/lang/String;)V

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v3

    const/4 v9, 0x1

    aput-object v10, v12, v9

    invoke-virtual {v1, v8, v4, v12}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_7

    :cond_e
    if-eqz v9, :cond_f

    goto :goto_6

    :cond_f
    move-object v9, v10

    :goto_6
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v9}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v9, v10, v3

    const-string v8, "SystemUi.QS_DIALOG_MANAGEMENT_NAMED_VPN"

    invoke-virtual {v1, v8, v4, v10}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_10
    if-eqz v9, :cond_11

    if-eqz v10, :cond_11

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0, v9, v10}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;Ljava/lang/String;)V

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v9, v12, v3

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-virtual {v1, v8, v4, v12}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_11
    const/4 v13, 0x1

    if-eqz v10, :cond_12

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0, v10}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;)V

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v10, v8, v3

    const-string v9, "SystemUi.QS_DIALOG_WORK_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_12
    if-eqz v4, :cond_13

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0, v9}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/String;)V

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v9, v8, v3

    const-string v9, "SystemUi.QS_DIALOG_PERSONAL_PROFILE_NAMED_VPN"

    invoke-virtual {v1, v9, v4, v8}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    :cond_13
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f13049c

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v9, v8, v3

    invoke-virtual {v1, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_7
    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f1304a1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v4, 0x7f1304a0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {v4, v0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {v7, v1, v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    :goto_8
    const v1, 0x7f0b077a

    const v4, 0x7f0b0779

    if-nez v7, :cond_14

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_14
    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0b077b

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v8}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v8, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v8

    iget-object v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mMonitoringSubtitleVpnStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda19;

    const-string v9, "SystemUi.QS_DIALOG_MONITORING_VPN_SUBTITLE"

    invoke-virtual {v8, v9, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    if-eqz v2, :cond_15

    const/4 v9, 0x1

    goto :goto_a

    :cond_15
    move v9, v3

    :goto_a
    if-eqz v5, :cond_16

    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    move v0, v3

    :goto_b
    if-eqz v6, :cond_17

    const/4 v2, 0x1

    goto :goto_c

    :cond_17
    move v2, v3

    :goto_c
    if-eqz v7, :cond_18

    const/4 v3, 0x1

    :cond_18
    if-eqz v9, :cond_19

    goto :goto_e

    :cond_19
    if-eqz v2, :cond_1a

    add-int/lit8 v4, v0, 0x1

    goto :goto_d

    :cond_1a
    move v4, v0

    :goto_d
    if-eqz v3, :cond_1b

    add-int/lit8 v4, v4, 0x1

    :cond_1b
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1c

    goto :goto_e

    :cond_1c
    if-eqz v0, :cond_1d

    const v0, 0x7f0b0152

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    if-eqz v2, :cond_1e

    const v0, 0x7f0b048a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    if-eqz v3, :cond_1f

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    :goto_e
    return-object v11
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p0
.end method

.method public getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v0, 0x7f1304a7

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementTitleSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda6;

    const-string v0, "SystemUi.QS_DIALOG_MANAGEMENT_TITLE"

    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMangedDeviceGeneralText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mManagementMessageSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda12;

    const-string v0, "SystemUi.QS_MSG_MANAGEMENT"

    invoke-virtual {p1, v0, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->isFinancedDevice()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const v0, 0x7f1305e1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda26;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Ljava/lang/CharSequence;)V

    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    const-string p1, "SystemUi.QS_MSG_NAMED_MANAGEMENT"

    invoke-virtual {v0, p1, v3, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsButton()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mViewPoliciesButtonStringSupplier:Lcom/android/systemui/qs/QSSecurityFooter$$ExternalSyntheticLambda20;

    const-string v1, "SystemUi.QS_DIALOG_VIEW_POLICIES"

    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isFinancedDevice()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p1, 0x0

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mReceiver:Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
