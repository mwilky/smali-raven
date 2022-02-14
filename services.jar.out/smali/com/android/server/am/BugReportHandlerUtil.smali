.class public final Lcom/android/server/am/BugReportHandlerUtil;
.super Ljava/lang/Object;
.source "BugReportHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final INTENT_BUGREPORT_REQUESTED:Ljava/lang/String; = "com.android.internal.intent.action.BUGREPORT_REQUESTED"

.field private static final INTENT_GET_BUGREPORT_HANDLER_RESPONSE:Ljava/lang/String; = "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

.field private static final SHELL_APP_PACKAGE:Ljava/lang/String; = "com.android.shell"

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/BugReportHandlerUtil;->launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.BUGREPORT_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getBugReportHandlerAppResponseReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getCustomBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_bugreport_handler_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomBugReportHandlerUser(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_bugreport_handler_user"

    const/16 v2, -0x2710

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040215

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isBugReportHandlerEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isBugreportWhitelistedApp(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static isShellApp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.shell"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidBugReportHandlerApp(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/BugReportHandlerUtil;->isBugreportWhitelistedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launching bug report handler app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.BUGREPORT_REQUESTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v0, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    const-string v6, "Error while trying to launch bugreport handler app."

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method static launchBugReportHandlerApp(Landroid/content/Context;)Z
    .locals 21

    move-object/from16 v12, p0

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->isBugReportHandlerEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_0

    return v13

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getCustomBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->isShellApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v13

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getCustomBugReportHandlerUser(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0}, Lcom/android/server/am/BugReportHandlerUtil;->isValidBugReportHandlerApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v14, v0

    move v15, v1

    goto :goto_0

    :cond_2
    invoke-static {v12, v0, v1}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->resetCustomBugreportHandlerAppAndUser(Landroid/content/Context;)V

    move-object v14, v0

    move v15, v1

    goto :goto_0

    :cond_3
    move-object v14, v0

    move v15, v1

    :goto_0
    invoke-static {v14}, Lcom/android/server/am/BugReportHandlerUtil;->isShellApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v14}, Lcom/android/server/am/BugReportHandlerUtil;->isValidBugReportHandlerApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v12, v14, v15}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-static {v12, v14, v15}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppResponseReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v16, 0x1

    if-eqz v0, :cond_5

    invoke-static {v12, v14, v15}, Lcom/android/server/am/BugReportHandlerUtil;->launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V

    return v16

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Getting response from bug report handler app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "ActivityManager"

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    invoke-virtual {v10, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    nop

    :try_start_0
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    const/4 v5, -0x1

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;

    invoke-direct {v7, v14, v15}, Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v20, v10

    move-object v10, v0

    move-object v13, v11

    move-object/from16 v11, v19

    :try_start_1
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v16

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v20, v10

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v20, v10

    move-object v13, v11

    :goto_1
    :try_start_2
    const-string v1, "Error while trying to get response from bug report handler app."

    invoke-static {v13, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_6
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method private static resetCustomBugreportHandlerAppAndUser(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_bugreport_handler_app"

    invoke-static {p0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_bugreport_handler_user"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
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
