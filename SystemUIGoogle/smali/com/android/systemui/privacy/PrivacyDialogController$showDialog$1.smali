.class public final Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;
.super Ljava/lang/Object;
.source "PrivacyDialogController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDialogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDialogController.kt\ncom/android/systemui/privacy/PrivacyDialogController$showDialog$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n1601#2,9:343\n1849#2:352\n286#2,2:353\n1850#2:356\n1610#2:357\n1#3:355\n*S KotlinDebug\n*F\n+ 1 PrivacyDialogController.kt\ncom/android/systemui/privacy/PrivacyDialogController$showDialog$1\n*L\n206#1:343,9\n206#1:352\n208#1:353,2\n206#1:356\n206#1:357\n206#1:355\n*E\n"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyDialogController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 29

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v2, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    sget-object v3, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    iget-object v4, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v5, v4, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    iget-object v4, v4, Lcom/android/systemui/privacy/PrivacyDialogController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    invoke-interface {v4}, Lcom/android/systemui/appops/AppOpsController;->isMicMuted()Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v5, v5, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v5}, Lcom/android/systemui/settings/UserTracker;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v6, v6, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v6, v4}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUnfilteredPermGroupUsage(Ljava/util/List;)V

    iget-object v6, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/permission/PermissionGroupUsage;

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x440149cd

    if-eq v10, v11, :cond_4

    const v11, 0x31640343

    if-eq v10, v11, :cond_2

    const v11, 0x5e404d38

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "android.permission-group.MICROPHONE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v1

    goto :goto_2

    :cond_2
    const-string v10, "android.permission-group.LOCATION"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v2

    goto :goto_2

    :cond_4
    const-string v10, "android.permission-group.CAMERA"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :goto_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    move-object v9, v3

    :goto_2
    if-nez v9, :cond_6

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    if-eq v9, v3, :cond_7

    if-ne v9, v1, :cond_8

    :cond_7
    iget-object v10, v6, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v10, v10, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean v10, v10, Lcom/android/systemui/privacy/PrivacyConfig;->micCameraAvailable:Z

    if-eqz v10, :cond_8

    goto :goto_3

    :cond_8
    if-ne v9, v2, :cond_9

    iget-object v10, v6, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v10, v10, Lcom/android/systemui/privacy/PrivacyItemController;->privacyConfig:Lcom/android/systemui/privacy/PrivacyConfig;

    iget-boolean v10, v10, Lcom/android/systemui/privacy/PrivacyConfig;->locationAvailable:Z

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    move-object v14, v9

    :goto_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Landroid/content/pm/UserInfo;

    iget v15, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne v15, v12, :cond_b

    move v12, v11

    goto :goto_5

    :cond_b
    move v12, v13

    :goto_5
    if-eqz v12, :cond_a

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    :goto_6
    check-cast v10, Landroid/content/pm/UserInfo;

    if-nez v10, :cond_d

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_d
    if-nez v14, :cond_f

    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_f
    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, ""

    :goto_7
    move-object/from16 v17, v9

    goto :goto_8

    :cond_10
    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v12

    :try_start_0
    iget-object v15, v6, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v15, v9, v13, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v15, v6, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    const-string v12, "Label not found for: "

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "PrivacyDialogController"

    invoke-static {v15, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :goto_8
    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    new-instance v12, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getProxyLabel()Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getLastAccessTimeMillis()J

    move-result-wide v21

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->isActive()Z

    move-result v23

    if-nez v10, :cond_11

    move/from16 v24, v13

    goto :goto_9

    :cond_11
    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    move/from16 v24, v9

    :goto_9
    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->isPhoneCall()Z

    move-result v25

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getPermissionGroupName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getAttributionTag()Ljava/lang/CharSequence;

    move-result-object v27

    invoke-virtual {v8}, Landroid/permission/PermissionGroupUsage;->getAttributionLabel()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_12

    move v8, v11

    goto :goto_a

    :cond_12
    move v8, v13

    :goto_a
    if-eqz v27, :cond_13

    if-eqz v8, :cond_13

    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.MANAGE_PERMISSION_USAGE"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "android.intent.extra.PERMISSION_GROUP_NAME"

    invoke-virtual {v8, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-array v10, v11, [Ljava/lang/String;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v27, 0x0

    aput-object v13, v10, v27

    const-string v13, "android.intent.extra.ATTRIBUTION_TAGS"

    invoke-virtual {v8, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.SHOWING_ATTRIBUTION"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, v6, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v27, 0x0

    invoke-static/range {v27 .. v28}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_13

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_13

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string v13, "android.permission.START_VIEW_PERMISSION_USAGE"

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    new-instance v11, Landroid/content/ComponentName;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_b

    :cond_13
    new-instance v8, Landroid/content/Intent;

    const-string v10, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {v16 .. v16}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    const-string v10, "android.intent.extra.USER"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_b
    move-object/from16 v27, v8

    move-object v13, v12

    invoke-direct/range {v13 .. v27}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;-><init>(Lcom/android/systemui/privacy/PrivacyType;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JZZZLjava/lang/String;Landroid/content/Intent;)V

    :goto_c
    if-nez v12, :cond_14

    goto/16 :goto_0

    :cond_14
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->this$0:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;

    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;->$context:Landroid/content/Context;

    invoke-direct {v3, v1, v7, v0}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
