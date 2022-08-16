.class public final Lcom/google/android/systemui/columbus/actions/LaunchApp;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "LaunchApp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaunchApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,392:1\n11328#2:393\n11663#2,3:394\n1741#3,3:397\n764#3:400\n855#3,2:401\n1849#3,2:403\n1547#3:405\n1618#3,3:406\n*S KotlinDebug\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n*L\n250#1:393\n250#1:394,3\n256#1:397,3\n361#1:400\n361#1:401,2\n362#1:403,2\n375#1:405\n375#1:406,3\n*E\n"
.end annotation


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final allowCertList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final allowPackageList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final availableApps:Ljava/util/LinkedHashMap;

.field public final availableShortcuts:Ljava/util/LinkedHashMap;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final bgHandler:Landroid/os/Handler;

.field public final broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

.field public currentApp:Landroid/content/ComponentName;

.field public currentShortcut:Ljava/lang/String;

.field public final denyPackageList:Ljava/util/LinkedHashSet;

.field public final deviceConfigPropertiesChangedListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$deviceConfigPropertiesChangedListener$1;

.field public final gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;

.field public final keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field public final launcherApps:Landroid/content/pm/LauncherApps;

.field public final mainHandler:Landroid/os/Handler;

.field public final messageDigest:Ljava/security/MessageDigest;

.field public final onDismissKeyguardAction:Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;

.field public final settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final tag:Ljava/lang/String;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/IActivityManager;Landroid/os/UserManager;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userManager:Landroid/os/UserManager;

    iput-object p8, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iput-object p9, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p10, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    iput-object p11, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->bgHandler:Landroid/os/Handler;

    iput-object p12, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p13, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p14, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    const-string p2, "Columbus/LaunchApp"

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->tag:Ljava/lang/String;

    new-instance p3, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    new-instance p3, Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    new-instance p4, Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    new-instance p4, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    new-instance p4, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;

    invoke-direct {p4, p0, p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/Context;)V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardUpdateMonitorCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;

    new-instance p4, Lcom/google/android/systemui/columbus/actions/LaunchApp$deviceConfigPropertiesChangedListener$1;

    invoke-direct {p4, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$deviceConfigPropertiesChangedListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->deviceConfigPropertiesChangedListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$deviceConfigPropertiesChangedListener$1;

    new-instance p6, Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;

    invoke-direct {p6, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->onDismissKeyguardAction:Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;

    const-string p6, "SHA-256"

    invoke-static {p6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p8, 0x7f03002f

    invoke-virtual {p6, p8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p6

    array-length p8, p6

    invoke-static {p6, p8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p6

    invoke-static {p6}, Landroidx/preference/R$drawable;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowPackageList:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p8, 0x7f03002e

    invoke-virtual {p6, p8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p6

    array-length p8, p6

    invoke-static {p6, p8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p6

    invoke-static {p6}, Landroidx/preference/R$drawable;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowCertList:Ljava/util/Set;

    new-instance p6, Ljava/util/LinkedHashSet;

    invoke-direct {p6}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/LinkedHashSet;

    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/LinkedHashMap;

    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/LinkedHashMap;

    const-string p6, ""

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    const-string/jumbo p8, "systemui"

    invoke-static {p8, p12, p4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string/jumbo p4, "systemui_google_columbus_secure_deny_list"

    invoke-static {p8, p4, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateDenyList(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p5, p3, p2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
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

    const-string/jumbo p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    invoke-virtual {p7, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    invoke-virtual {p7}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    iget-object p1, p7, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p2, p7, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p2}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p2

    const-string p3, "columbus_launch_app_shortcut"

    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object p6, p1

    :goto_1
    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailable()V

    return-void
.end method

.method public static final access$addShortcutsForApp(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/pm/LauncherActivityInfo;Ljava/util/List;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/LinkedHashSet;

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz v0, :cond_7

    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowPackageList:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v5}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v0

    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v0

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    new-instance v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v8

    sget-object v10, Lkotlin/text/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowCertList:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v0, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v0, v3

    :goto_5
    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v5, :cond_a

    move-object v5, v4

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v5, "systemui_google_quick_tap_is_source"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_b

    goto :goto_8

    :cond_b
    move-object v10, v0

    goto :goto_9

    :cond_c
    :goto_8
    move-object v10, v4

    :goto_9
    if-nez v10, :cond_d

    goto :goto_b

    :cond_d
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    iget-object v5, v1, Lcom/google/android/systemui/columbus/actions/Action;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x10000000

    const/16 v16, 0x0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v17

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v18

    invoke-interface/range {v6 .. v18}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP_SECURE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object v6, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v6, :cond_e

    move-object v6, v4

    goto :goto_a

    :cond_e
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    :goto_a
    invoke-interface {v0, v5, v3, v6}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_b

    :catch_0
    move-exception v0

    const-string v5, "Columbus/LaunchApp"

    const-string v6, "Unable to start secure activity for"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    if-nez v3, :cond_10

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardUpdateMonitorCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_f
    iget-object v0, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v1, v1, Lcom/google/android/systemui/columbus/actions/LaunchApp;->onDismissKeyguardAction:Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;

    invoke-interface {v0, v1, v4, v2}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    :cond_10
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    const-string v1, "Launch "

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " shortcut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final updateAvailable()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    :goto_2
    return-void
.end method

.method public final updateAvailableAppsAndShortcutsAsync()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateDenyList(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/LinkedHashSet;

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final usingShortcut()Z
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
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method
