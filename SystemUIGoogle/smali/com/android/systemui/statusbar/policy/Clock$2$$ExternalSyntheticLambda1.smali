.class public final synthetic Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_a

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v5}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget-object v7, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v7}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/content/pm/UserInfo;

    iget v9, v11, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v9, :cond_3

    move v14, v8

    goto :goto_2

    :cond_3
    move v14, v7

    :goto_2
    if-nez v6, :cond_5

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v17, v7

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v17, v8

    :goto_4
    iget-boolean v9, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserSwitcherEnabled:Z

    if-nez v9, :cond_6

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v2

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZ)V

    goto :goto_1

    :cond_7
    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v9

    if-eqz v9, :cond_2

    iget v9, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-nez v9, :cond_8

    iget-object v9, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    iget v10, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v10, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f07048b

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-static {v9, v10, v10, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_8
    move-object v12, v9

    new-instance v9, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v18}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZ)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    if-nez v2, :cond_10

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestUserAutoCreated:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mGuestIsResetting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz v6, :cond_a

    move/from16 v16, v8

    goto :goto_5

    :cond_a
    move/from16 v16, v7

    :goto_5
    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZ)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    if-eqz v2, :cond_c

    move v0, v8

    goto :goto_6

    :cond_c
    move v0, v7

    :goto_6
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserSwitcherEnabled:Z

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->currentUserCanCreateUsers()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v5, "no_add_user"

    invoke-virtual {v2, v5, v3}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    xor-int/2addr v2, v8

    if-eqz v2, :cond_d

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersFromLockScreen:Z

    if-eqz v2, :cond_d

    move v2, v8

    goto :goto_7

    :cond_d
    move v2, v7

    :goto_7
    if-eqz v2, :cond_f

    :cond_e
    if-nez v0, :cond_f

    move v0, v8

    goto :goto_8

    :cond_f
    move v0, v7

    :goto_8
    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersFromLockScreen:Z

    xor-int/lit8 v15, v2, 0x1

    const/16 v17, 0x0

    move-object v9, v0

    move/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZ)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_9
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->canCreateUser()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersFromLockScreen:Z

    xor-int/lit8 v15, v2, 0x1

    const/16 v17, 0x0

    move-object v9, v0

    move/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZ)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mCreateSupervisedUserPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->canCreateUser()Z

    move-result v0

    if-eqz v0, :cond_13

    move v7, v8

    :cond_13
    if-eqz v7, :cond_14

    new-instance v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersFromLockScreen:Z

    xor-int/lit8 v15, v2, 0x1

    const/16 v17, 0x1

    move-object v9, v0

    move/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;-><init>(Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;ZZZZZZ)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->checkIfAddUserDisallowedByAdminOnly(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUiExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda3;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, v4}, Lcom/android/systemui/screenshot/ImageExporter$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_a
    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->updateNotificationViews(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, v1, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_3
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/policy/Clock$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/Clock$2;->this$0:Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    const-string v0, ""

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormatString:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/Clock;->mDateTimePatternGenerator:Landroid/icu/text/DateTimePatternGenerator;

    :cond_15
    return-void

    :goto_b
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock$2$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
