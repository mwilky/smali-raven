.class public final Lcom/google/android/systemui/columbus/actions/LaunchApp;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "LaunchApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaunchApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,201:1\n734#2:202\n825#2,2:203\n1819#2,2:205\n*E\n*S KotlinDebug\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n*L\n183#1:202\n183#1,2:203\n184#1,2:205\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;


# instance fields
.field private final availableApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final availableShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bgHandler:Landroid/os/Handler;

.field private final broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

.field private currentApp:Ljava/lang/String;

.field private currentShortcut:Ljava/lang/String;

.field private final gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

.field private final launcherApps:Landroid/content/pm/LauncherApps;

.field private final mainHandler:Landroid/os/Handler;

.field private final settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

.field private final tag:Ljava/lang/String;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final userManager:Landroid/os/UserManager;

.field private final userSwitchCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->Companion:Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Landroid/app/IActivityManager;Landroid/os/UserManager;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherApps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManagerService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusSettings"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardVisibility"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userManager:Landroid/os/UserManager;

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->bgHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p2, "Columbus/LaunchApp"

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->tag:Ljava/lang/String;

    new-instance p4, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    new-instance p4, Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userSwitchCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;

    new-instance p7, Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    invoke-direct {p7, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    new-instance p7, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    invoke-direct {p7, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    new-instance p7, Ljava/util/LinkedHashMap;

    invoke-direct {p7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    new-instance p7, Ljava/util/LinkedHashMap;

    invoke-direct {p7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    const-string p7, ""

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    :try_start_0
    invoke-interface {p3, p4, p2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "Failed to register user switch observer"

    invoke-static {p2, p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    invoke-virtual {p5, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    invoke-virtual {p5}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAppShortcut()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    invoke-virtual {p6, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$addShortcutsForApp(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->addShortcutsForApp(Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getAllShortcutsForUser(Lcom/google/android/systemui/columbus/actions/LaunchApp;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->getAllShortcutsForUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAvailableApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getAvailableShortcuts$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getLauncherApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/content/pm/LauncherApps;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getUserManager$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static final synthetic access$setCurrentApp$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCurrentShortcut$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$updateAvailableAppsAndShortcutsAsync(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    return-void
.end method

.method private final addShortcutsForApp(Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherActivityInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private final getAllShortcutsForUser(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/IllegalStateException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    throw p0

    :cond_1
    :goto_0
    const-string p1, "Columbus/LaunchApp"

    const-string v0, "Failed to query for shortcuts"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private final updateAvailable()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    :goto_2
    return-void
.end method

.method private final updateAvailableAppsAndShortcutsAsync()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final usingShortcut()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    const-string v1, "Launch "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shortcut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
