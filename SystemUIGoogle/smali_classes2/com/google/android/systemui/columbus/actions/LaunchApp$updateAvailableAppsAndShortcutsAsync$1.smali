.class final Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;
.super Ljava/lang/Object;
.source "LaunchApp.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getUserManager$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getAvailableApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getAvailableShortcuts$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getLauncherApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/content/pm/LauncherApps;

    move-result-object v1

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v2, v0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getAllShortcutsForUser(Lcom/google/android/systemui/columbus/actions/LaunchApp;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherActivityInfo;

    :try_start_0
    iget-object v5, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v5}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getLauncherApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/content/pm/LauncherApps;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v8, Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v5, "systemui_google_quick_tap_is_source"

    const/4 v6, 0x1

    invoke-virtual {v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v5}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getAvailableApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    const-string v6, "appInfo.componentName"

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-virtual {v6}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v9, 0x4000000

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v11}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Lcom/android/systemui/settings/UserTracker;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "getActivityAsUser(\n                                            context,\n                                            0,\n                                            sourcedIntent,\n                                            FLAG_IMMUTABLE,\n                                            null,\n                                            userTracker.userHandle)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    const-string v6, "appInfo"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4, v2}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$addShortcutsForApp(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->access$getMainHandler$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$1;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;->this$0:Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Did not update apps and shortcuts, user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not unlocked"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Columbus/LaunchApp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
