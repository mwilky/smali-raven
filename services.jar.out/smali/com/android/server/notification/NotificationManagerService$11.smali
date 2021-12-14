.class Lcom/android/server/notification/NotificationManagerService$11;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    return-void
.end method

.method private cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x1

    const/16 v11, 0xa

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move-object v12, p1

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method private checkCanEnqueueToast(Ljava/lang/String;IZZ)Z
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->isPackagePaused(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$11;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x64

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v6, "NotificationService"

    if-nez p4, :cond_4

    if-eqz v1, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suppressing toast from package "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v8, " due to package suspended."

    goto :goto_1

    :cond_3
    const-string v8, " by user request."

    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, p2}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;I)Z

    move-result v9

    invoke-static {v8, p2, p4, p3, v9}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;IZZZ)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Blocking custom toast from package "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " due to package not in the foreground at time the toast was posted"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5
    return v2

    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkPackagePolicyAccess(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private checkPolicyAccess(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v4

    :cond_0
    nop

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .locals 11

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    const-string v5, "channel in list is null"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v6

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v10

    move-object v6, p1

    move v7, p2

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, p1, p2, v8, v9}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_2
    return-void
.end method

.method private enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5600(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " may not delete notification channel \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' with fg service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to delete channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with a foreground service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforcePolicyAccess(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5500(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    aget-object v5, v1, v3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification policy access denied calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Notification policy access denied"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification policy access denied calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Notification policy access denied"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v13, p3

    move/from16 v12, p5

    move/from16 v11, p6

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueToast pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v14, :cond_d

    if-nez v13, :cond_1

    if-eqz p4, :cond_d

    :cond_1
    if-eqz v13, :cond_2

    if-nez p4, :cond_d

    :cond_2
    if-nez v15, :cond_3

    goto/16 :goto_9

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v14}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/16 v16, 0x1

    if-nez v0, :cond_5

    const-string v0, "android"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    move/from16 v0, v16

    :goto_1
    move v8, v0

    if-eqz p4, :cond_6

    move/from16 v0, v16

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    move v7, v0

    invoke-direct {v1, v14, v10, v7, v8}, Lcom/android/server/notification/NotificationManagerService$11;->checkCanEnqueueToast(Ljava/lang/String;IZZ)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v5, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-wide/from16 v17, v2

    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ltz v0, :cond_8

    :try_start_2
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/toast/ToastRecord;

    invoke-virtual {v2, v12}, Lcom/android/server/notification/toast/ToastRecord;->update(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v15, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v20, v10

    const/4 v14, 0x0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move v15, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v20, v10

    goto/16 :goto_7

    :cond_8
    const/4 v2, 0x0

    :try_start_3
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v4, v3

    const/4 v3, 0x0

    move/from16 v19, v2

    :goto_3
    if-ge v3, v4, :cond_b

    :try_start_4
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/toast/ToastRecord;

    iget-object v9, v2, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    add-int/lit8 v9, v19, 0x1

    move/from16 v21, v0

    const/4 v0, 0x5

    if-lt v9, v0, :cond_9

    const-string v0, "NotificationService"

    move-object/from16 v22, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v4

    const-string v4, "Package has already queued "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " toasts. Not showing more. Package="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v20, v10

    goto/16 :goto_8

    :cond_9
    move-object/from16 v22, v2

    move/from16 v23, v4

    move/from16 v19, v9

    goto :goto_4

    :cond_a
    move/from16 v21, v0

    move-object/from16 v22, v2

    move/from16 v23, v4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v21

    move/from16 v4, v23

    goto :goto_3

    :cond_b
    move/from16 v21, v0

    move/from16 v23, v4

    :try_start_6
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v2

    const/16 v3, 0x7d5

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v11, v4}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move v3, v10

    move/from16 v22, v23

    move v4, v5

    move v9, v5

    move-object/from16 v5, p1

    move-object/from16 v23, v6

    move v6, v8

    move/from16 v24, v7

    move-object/from16 v7, p2

    move/from16 v25, v8

    move-object/from16 v8, p3

    move v15, v9

    const/4 v14, 0x0

    move-object/from16 v9, p4

    move/from16 v20, v10

    move/from16 v10, p5

    move-object v11, v0

    move/from16 v12, p6

    move-object/from16 v13, p7

    :try_start_7
    invoke-static/range {v2 .. v13}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v15}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;I)V

    move v0, v3

    :goto_5
    if-nez v0, :cond_c

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v14}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_c
    :goto_6
    :try_start_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v23

    return-void

    :catchall_3
    move-exception v0

    move v15, v5

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v20, v10

    :goto_7
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :catchall_4
    move-exception v0

    move-object/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v20, v10

    :goto_8
    monitor-exit v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_8

    :cond_d
    :goto_9
    const-string v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enqueuing toast. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " text="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " callback= token="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isNotificationListenerAccessUserSet(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageOrComponentUserSet(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    move/from16 v3, p2

    if-ne v1, v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification;->setAllowlistToken(Landroid/os/IBinder;)V

    new-instance v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v14

    move-object v4, v2

    move-object v11, v1

    invoke-direct/range {v4 .. v15}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v2

    :cond_1
    return-object v2
.end method

.method private verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not have access"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have access"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "automaticZenRule is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p2}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZenPolicy is only applicable to INTERRUPTION_FILTER_PRIORITY filters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "addAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p2, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->addAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public allowAssistantAdjustment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    return-void
.end method

.method public applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Adjustment;

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v6, v5}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "key_importance"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v9, "key_importance"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/android/server/notification/NotificationManagerService$11;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/server/notification/NotificationRecord;->setPendingLogUpdate(Z)V

    const/4 v0, 0x1

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    :try_start_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v3}, Lcom/android/server/notification/RankingHandler;->requestSort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v6, p2}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$11;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public applyRestore([BI)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " payload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore: no payload to restore for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "applyRestore: error reading payload"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public areBubblesAllowed(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public areBubblesEnabled(Landroid/os/UserHandle;)Z
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areBubblesEnabled for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public areChannelsBypassingDnd()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->areChannelsBypassingDnd()Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "Caller not system or systemui or same package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canNotifyAsPackage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v2, p3, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canNotifyAsPackage for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-interface {v2, p2, v3, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p2, v4, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canShowBadge(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v13, p1

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "cancelAllNotifications"

    move/from16 v4, p2

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x0

    move-object v5, p1

    move v10, v1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v15, p1

    :try_start_2
    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring deprecated cancelNotification(pkg, tag, id) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " use cancelNotification(key) instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v8, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v10

    move v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService$11;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    :goto_0
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    :goto_1
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v15, p1

    :goto_2
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    return-void
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    if-eqz v10, :cond_3

    array-length v1, v10

    move v7, v1

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v7, :cond_2

    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v2, v10, v6

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    move-object/from16 v16, v1

    if-nez v16, :cond_0

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_1

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    move v5, v1

    iget v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v5, v1, :cond_1

    const/4 v1, -0x1

    if-eq v5, v1, :cond_1

    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v1

    if-nez v1, :cond_1

    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_1

    :cond_1
    nop

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v19

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v11

    move v4, v12

    move/from16 v20, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    move-object/from16 v6, v18

    move/from16 v18, v7

    move/from16 v7, v19

    move/from16 v8, v20

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService$11;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    :goto_1
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v8, p1

    move/from16 v7, v18

    goto :goto_0

    :cond_2
    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_2

    :cond_3
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v4, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/16 v5, 0xb

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v7

    move v2, v11

    move v3, v12

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    :goto_2
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelToast pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    goto :goto_0

    :cond_1
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :goto_1
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not cancelling notification. pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearData(Ljava/lang/String;IZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v12, p1

    const/4 v13, 0x0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2100()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x15

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    invoke-virtual {v1, v12, v14}, Lcom/android/server/notification/ConditionProviders;->resetPackage(Ljava/lang/String;I)Z

    move-result v1

    or-int/2addr v1, v13

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2, v12, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-gtz v5, :cond_1

    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    or-int/2addr v1, v5

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v8

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v14, v6, v3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v5

    invoke-virtual {v5, v12, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_4

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v7, v3

    :goto_4
    or-int/2addr v1, v7

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v8

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v14, v3, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v7

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4, v14, v6, v3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    :cond_6
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, v4, v12}, Lcom/android/server/notification/SnoozeHelper;->clearData(ILjava/lang/String;)V

    if-nez p3, :cond_7

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move/from16 v4, p2

    invoke-virtual {v3, v12, v4}, Lcom/android/server/notification/PreferencesHelper;->clearData(Ljava/lang/String;I)V

    goto :goto_6

    :cond_7
    move/from16 v4, p2

    :goto_6
    if-eqz v1, :cond_8

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_8
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "only system can call this"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, p3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v4, 0x1

    aput-object p4, v2, v4

    const-string v5, "%1$s : %2$s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p4}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    new-array v4, v4, [Landroid/app/NotificationChannel;

    aput-object v1, v4, v3

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/notification/NotificationManagerService$11;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v2}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, p1

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$11;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .locals 1

    const-string/jumbo v0, "only system can call this"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v12, p2}, Lcom/android/server/notification/NotificationManagerService$11;->enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2100()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x14

    const/4 v11, 0x0

    move-object v4, p1

    move-object v5, p2

    move v9, v12

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$3000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v2

    invoke-virtual {v2, p1, v12, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->removeChannelNotifications(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2}, Lcom/android/server/notification/NotificationHistoryManager;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v0, p2, v5}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete default channel"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v12}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v13, v12, v14}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v15}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v10

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    nop

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v12, v11, v2}, Lcom/android/server/notification/NotificationManagerService$11;->enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v12, v14, v13}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v9

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x3

    if-ge v8, v1, :cond_1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/app/NotificationChannel;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2100()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()I

    move-result v3

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x14

    const/16 v20, 0x0

    move-object/from16 v4, p1

    move-object/from16 v21, v6

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v16, v8

    move/from16 v8, v18

    move-object/from16 v17, v9

    move v9, v11

    move-object/from16 v18, v10

    move/from16 v10, v19

    move/from16 v19, v11

    move-object/from16 v11, v20

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object/from16 v3, v21

    const/4 v4, 0x3

    invoke-virtual {v1, v12, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    add-int/lit8 v8, v16, 0x1

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move/from16 v11, v19

    goto :goto_1

    :cond_1
    move v4, v7

    move/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move/from16 v19, v11

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v12, v2, v15, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_2
    return-void
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryManager;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V

    return-void
.end method

.method public disallowAssistantAdjustment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->access$6900(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->rvStats:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->access$7000(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_0

    :cond_2
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$7100(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_0

    :cond_3
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->access$7200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    return-void
.end method

.method public enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IILandroid/app/ITransientNotificationCallback;)V
    .locals 8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$11;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;)V

    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;II)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$11;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IILandroid/app/ITransientNotificationCallback;)V

    return-void
.end method

.method public finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/toast/ToastRecord;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v4, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget v7, v4, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->finishWindowTokenLocked(Landroid/os/IBinder;I)V

    goto :goto_0

    :cond_0
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already killed. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    array-length v3, p2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_6

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    goto :goto_3

    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    :goto_3
    nop

    if-nez v6, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v9

    invoke-virtual {v8, v7, v9, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_5

    :cond_4
    if-nez p3, :cond_5

    move-object v8, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    :goto_4
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getActiveNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v6, 0x0

    move v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/service/notification/StatusBarNotification;

    move-object v0, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not currently an assistant"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedAssistantAdjustments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .locals 1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "At most one NotificationAssistant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "getAppActiveNotifications"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p2

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-direct {p0, p1, v0, v5}, Lcom/android/server/notification/NotificationManagerService$11;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed(ILjava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-direct {p0, p1, v0, v6}, Lcom/android/server/notification/NotificationManagerService$11;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-direct {p0, p1, v0, v6}, Lcom/android/server/notification/NotificationManagerService$11;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v6

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getAppsBypassingDndCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getAppsBypassingDndCount(I)I

    move-result v0

    return v0
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Id is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(I)[B
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPayload u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, p1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackupPayload: error writing payload for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getBlockedAppCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getBlockedAppCount(I)I

    move-result v0

    return v0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "getBlockedChannelCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBubblePreferenceForPackage(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "Caller not system or systemui or same package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBubblePreferenceForPackage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBubblePreference(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;
    .locals 9

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationManagerService$11;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot read channels for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5500(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v8, 0x0

    move-object v3, p3

    move v4, v0

    move-object v5, p4

    move-object v6, p6

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v1

    return-object v1
.end method

.method public getConversations(Z)Landroid/content/pm/ParceledListSlice;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "getConversations"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getConversations(Landroid/util/IntArray;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ConversationChannelWrapper;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    :goto_1
    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    const-string v0, "getConversationsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ConversationChannelWrapper;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    :goto_1
    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getDefaultNotificationAssistant()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getDefaultFromConfig()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "getDeletedChannelCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEnabledNotificationListenerPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getAllowedPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledNotificationListeners(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationListenerAccess()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getHistoricalNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v6, 0x0

    move v3, v7

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$3000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$3000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    move-object v0, v2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$11;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .locals 1

    const-string v0, "getNotificationChannelGroupForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "getNotificationChannelGroupsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot read channels for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5500(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v0, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    const-string v0, "getNotificationChannelsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .locals 9

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getNotificationHistory"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x19

    const/4 v8, 0x0

    move v5, v0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    const-wide/32 v2, 0x80000

    const-string/jumbo v4, "notifHistoryReadHistory"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationHistoryManager;->readNotificationHistory([I)Landroid/app/NotificationHistory;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4

    :cond_0
    new-instance v1, Landroid/app/NotificationHistory;

    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    return-object v1
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .locals 1

    const-string v0, "getNumNotificationChannelsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .locals 1

    const-string v0, "getPopulatedNotificationChannelGroupForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateNotificationsAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Owner is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "getRuleInstanceCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v9

    invoke-virtual {v8, v7, v9, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    move-object v8, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    :goto_1
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getZenMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    return v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    const-string v0, "INotificationManager.getZenModeConfig"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getZenRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRules"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenRules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasEnabledNotificationListener(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "request policy access status for another package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackagePaused(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "INotificationManager.isSystemConditionProviderEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 7

    const-string v0, "INotificationManager.matchesCallFilter"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class v3, Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/notification/ValidateNotificationPeople;

    const/16 v5, 0xbb8

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v0

    return v0
.end method

.method public migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v5, p1

    :try_start_2
    invoke-virtual {v0, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    move-object v6, v0

    iget-object v0, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v7, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v7, v0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v8, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {v8}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    move-object v0, v8

    goto :goto_0

    :cond_0
    move-object v8, v0

    :goto_0
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerFilter;->getDisallowedPackages()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    iget v11, v6, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v11

    array-length v13, v11

    :goto_2
    if-ge v12, v13, :cond_1

    aget v0, v11, v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v14, v0

    :try_start_3
    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    new-instance v15, Landroid/content/pm/VersionedPackage;

    invoke-direct {v15, v10, v0}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v15}, Landroid/service/notification/NotificationListenerFilter;->addPackage(Landroid/content/pm/VersionedPackage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :try_start_4
    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerFilter;->areAllTypesAllowed()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    move/from16 v9, p2

    :try_start_5
    invoke-virtual {v8, v9}, Landroid/service/notification/NotificationListenerFilter;->setTypes(I)V

    goto :goto_4

    :cond_3
    move/from16 v9, p2

    :goto_4
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setNotificationListenerFilter(Landroid/util/Pair;Landroid/service/notification/NotificationListenerFilter;)V

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v5, p1

    :goto_5
    move/from16 v9, p2

    :goto_6
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v9, p2

    :goto_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$11$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/notification/NotificationManagerService$11$1;-><init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/notification/NotificationShellCmd;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 1

    const-string/jumbo v0, "onlyHasDefaultChannel"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public pullStats(JIZLjava/util/List;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7400(Lcom/android/server/notification/NotificationManagerService;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v5, p1

    invoke-virtual {v0, v5, v6, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const-string v4, "NotificationService"

    packed-switch v2, :pswitch_data_0

    move-object/from16 v14, p5

    goto/16 :goto_2

    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pullStats REPORT_REMOTE_VIEWS from: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "  wtih "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v3}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/server/notification/PulledStats;->toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v14, p5

    :try_start_1
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "exiting pullStats with: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/android/server/notification/PulledStats;->endTimeMs()J

    move-result-wide v11

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v11, v12, v15}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v11

    :cond_0
    move-object/from16 v14, p5

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "null stats for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v14, p5

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v14, p5

    :goto_0
    :try_start_3
    const-string v11, "exiting pullStats: on error"

    invoke-static {v4, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v11, 0x0

    return-wide v11

    :catchall_1
    move-exception v0

    :goto_1
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v0, "exiting pullStats: bad request"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v11, 0x0

    return-wide v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .locals 2

    const-string v0, "INotificationManager.registerListener"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerSystemService(Landroid/os/IInterface;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Id is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "removeAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Package name is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "removeAutomaticZenRules"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|removeAutomaticZenRules"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestBindListener(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    :goto_0
    nop

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestBindProvider(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ConditionProviders;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    const/4 v4, 0x7

    and-int/lit8 v5, p2, 0x7

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v3, p2}, Lcom/android/server/notification/NotificationManagerService;->access$6400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v3, p2}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/notification/ZenModeHelper;->requestFromListener(Landroid/content/ComponentName;I)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$3300(Lcom/android/server/notification/NotificationManagerService;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .locals 2

    const-string v0, "id is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Condition is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setAutomaticZenRuleState"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    return-void
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setBubblesAllowed(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->setHideSilentStatusIcons(Z)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onStatusBarIconsBehaviorChanged(Z)V

    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "setInterruptionFilter"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid filter: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setNotificationListenerFilter(Landroid/util/Pair;Landroid/service/notification/NotificationListenerFilter;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setNASMigrationDoneAndResetDefault(IZ)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const-string v6, "NotificationService"

    const/16 v7, 0x40

    move v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultFromConfig()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    :goto_0
    return-void
.end method

.method public setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .locals 1

    nop

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/PreferencesHelper;->revokeNotificationDelegate(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v2, p2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p1, v0, p2, v4}, Lcom/android/server/notification/PreferencesHelper;->setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    return-void
.end method

.method public setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationListenerAccess()V

    if-nez p4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->isNotificationListenerAccessUserSet(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$7500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move v5, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v0, "setNotificationPolicy"

    invoke-direct {v1, v2, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v0, v2, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v7}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v7

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1c

    if-ge v8, v9, :cond_0

    iget v8, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v8, v8, -0x21

    and-int/lit8 v8, v8, -0x41

    and-int/lit16 v8, v8, -0x81

    iget v9, v7, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v9, v9, 0x20

    or-int/2addr v8, v9

    iget v9, v7, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v9, v9, 0x40

    or-int/2addr v8, v9

    iget v9, v7, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v9, v9, 0x80

    or-int/2addr v8, v9

    new-instance v9, Landroid/app/NotificationManager$Policy;

    iget v10, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v11, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v12, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v9, v8, v10, v11, v12}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v9

    :cond_0
    :try_start_1
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1e

    if-ge v8, v9, :cond_1

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v9, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/16 v10, 0x100

    iget v11, v7, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/notification/NotificationManagerService;->correctCategory(III)I

    move-result v13

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v14, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v15, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v9, v3, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v10, v7, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v12, v8

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v12 .. v17}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    move-object v3, v8

    :cond_1
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v8, v3, v7, v9}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I

    move-result v14

    new-instance v8, Landroid/app/NotificationManager$Policy;

    iget v11, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v12, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v13, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v15, v3, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move-object v10, v8

    invoke-direct/range {v10 .. v15}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    move-object v3, v8

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v2, v8, v3}, Lcom/android/server/notification/ZenLog;->traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V

    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v8, v3}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1
    move-exception v0

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    nop

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7400(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$7500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->getRequiredPermission()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    const-string/jumbo v0, "setNotificationsEnabledForPackage"

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, v13, v14}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_0

    move/from16 v0, v17

    goto :goto_0

    :cond_0
    move/from16 v0, v16

    :goto_0
    if-ne v0, v15, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/notification/PreferencesHelper;->setEnabled(Ljava/lang/String;IZ)V

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x93

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    if-nez v15, :cond_2

    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2100()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2200()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    :cond_2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v2, 0xb

    nop

    xor-int/lit8 v3, v15, 0x1

    invoke-virtual {v0, v2, v14, v13, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :try_start_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.APP_BLOCK_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.extra.BLOCKED_STATE"

    if-nez v15, :cond_3

    move/from16 v4, v17

    goto :goto_1

    :cond_3
    move/from16 v4, v16

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "NotificationService"

    const-string v3, "Can\'t notify app about app block change"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->setAppImportanceLocked(Ljava/lang/String;I)V

    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    if-nez p2, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    iget v9, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v8, v9, :cond_2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v9

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Marking notification as seen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p2, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationsSeenLocked(Ljava/util/ArrayList;)V

    :cond_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPrivateNotificationsAllowed(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$7700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$7702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setShowBadge(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setToastRateLimitingEnabled(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_TOAST_RATE_LIMITING"

    const-string v2, "App doesn\'t have the permission to enable/disable toast rate limiting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setToastRateLimitingEnabled method haven\'t found any packages for the  given uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", toast rate limiter not reset for that uid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    :try_start_3
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$4800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v7

    invoke-virtual {v7, v2, v6}, Lcom/android/server/utils/quota/MultiRateLimiter;->clear(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "NotificationService"

    const-string v5, "Failed to reset toast rate limiter for given uid"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "INotificationManager.setZenMode"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shouldHideSilentStatusIcons(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only available for notification listeners"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result v0

    return v0
.end method

.method public silenceNotificationSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V

    return-void
.end method

.method public snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-wide/16 v6, -0x1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v8, 0x0

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unlockAllNotificationChannels()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->unlockAllNotificationChannels()V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->unlockNotificationChannelImportance(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    return-void
.end method

.method public unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    iget-boolean v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p2, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Not allowed to unsnooze before deadline"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "automaticZenRule is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "updateAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService;->access$5700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method public updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, p4, v2}, Lcom/android/server/notification/NotificationManagerService;->access$5700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method public updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method
