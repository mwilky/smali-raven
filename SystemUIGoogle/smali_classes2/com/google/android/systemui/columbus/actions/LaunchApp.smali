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
    value = "SMAP\nLaunchApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,392:1\n11298#2:393\n11633#2,3:394\n1711#3,3:397\n734#3:400\n825#3,2:401\n1819#3,2:403\n1517#3:405\n1588#3,3:406\n*E\n*S KotlinDebug\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n*L\n250#1:393\n250#1,3:394\n256#1,3:397\n361#1:400\n361#1,2:401\n362#1,2:403\n375#1:405\n375#1,3:406\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final allowCertList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final allowPackageList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final availableApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bgExecutor:Ljava/util/concurrent/Executor;

.field private final bgHandler:Landroid/os/Handler;

.field private final broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

.field private currentApp:Landroid/content/ComponentName;

.field private currentShortcut:Ljava/lang/String;

.field private final denyPackageList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final keyguardUpdateMonitorCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;

.field private final keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field private final launcherApps:Landroid/content/pm/LauncherApps;

.field private final mainHandler:Landroid/os/Handler;

.field private final messageDigest:Ljava/security/MessageDigest;

.field private final onDismissKeyguardAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field private final settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

.field private final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final tag:Ljava/lang/String;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final userManager:Landroid/os/UserManager;

.field private final userSwitchCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->Companion:Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/app/IActivityManager;Landroid/os/UserManager;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/settings/UserTracker;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherApps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarKeyguardViewManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManagerService"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusSettings"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardVisibility"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userTracker"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userSwitchCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$userSwitchCallback$1;

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

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->deviceConfigPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-instance p6, Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;

    invoke-direct {p6, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$onDismissKeyguardAction$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->onDismissKeyguardAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const-string p6, "SHA-256"

    invoke-static {p6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget p8, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->SUMATRA_ALLOW_LIST:I

    invoke-virtual {p6, p8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p6

    const-string p8, "context.resources.getStringArray(\n            ColumbusResourceHelper.SUMATRA_ALLOW_LIST)"

    invoke-static {p6, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p8, p6

    new-array p8, p8, [Ljava/lang/String;

    array-length p9, p6

    const/4 p10, 0x0

    invoke-static {p6, p10, p8, p10, p9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowPackageList:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    sget p8, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->SUMATRA_CERT_LIST:I

    invoke-virtual {p6, p8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p6

    const-string p8, "context.resources.getStringArray(\n            ColumbusResourceHelper.SUMATRA_CERT_LIST)"

    invoke-static {p6, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p8, p6

    new-array p8, p8, [Ljava/lang/String;

    array-length p9, p6

    invoke-static {p6, p10, p8, p10, p9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p8}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p6

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowCertList:Ljava/util/Set;

    new-instance p6, Ljava/util/LinkedHashSet;

    invoke-direct {p6}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/Set;

    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    const-string p6, ""

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    const-string p6, "systemui"

    invoke-static {p6, p12, p4}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-string p4, "systemui_google_columbus_secure_deny_list"

    invoke-static {p6, p4, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateDenyList(Ljava/lang/String;)V

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

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    invoke-virtual {p7, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    invoke-virtual {p7}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    invoke-virtual {p7}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAppShortcut()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

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

.method public static final synthetic access$getKeyguardUpdateMonitor$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

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

.method public static final synthetic access$getStatusBarKeyguardViewManager$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method public static final synthetic access$getUserManager$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static final synthetic access$getUserTracker$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method public static final synthetic access$launchUnsecureAppInternal(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launchUnsecureAppInternal()V

    return-void
.end method

.method public static final synthetic access$setCurrentApp$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

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

.method public static final synthetic access$updateDenyList(Lcom/google/android/systemui/columbus/actions/LaunchApp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateDenyList(Ljava/lang/String;)V

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

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

.method private final launchUnsecureApp()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardUpdateMonitorCallback:Lcom/google/android/systemui/columbus/actions/LaunchApp$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->onDismissKeyguardAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private final launchUnsecureAppInternal()V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v6, :cond_3

    move-object v6, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-interface {v3, v4, v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    :goto_3
    return-void
.end method

.method private final maybeGetSecureIntent()Landroid/content/Intent;
    .locals 4

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->stateIsSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->packageIsAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "systemui_google_quick_tap_is_source"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method private final maybeLaunchSecureApp()Z
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->maybeGetSecureIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v14, 0x0

    if-nez v5, :cond_0

    return v14

    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Landroid/app/ActivityOptions;->setDisallowEnterPictureInPictureWhileLaunching(Z)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setRotationAnimationHint(I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v13

    iget-object v1, v0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v16

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move/from16 v13, v16

    invoke-interface/range {v1 .. v13}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    iget-object v1, v0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP_SECURE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v14, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v15

    :catch_0
    move-exception v0

    const-string v1, "Columbus/LaunchApp"

    const-string v2, "Unable to start secure activity for"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v14
.end method

.method private final packageIsAllowed(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/Set;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->packageIsStrictlyAllowed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final packageIsStrictlyAllowed(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowPackageList:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p1

    :goto_0
    const-string v1, "if (packageInfo.signingInfo.hasMultipleSigners()) {\n            packageInfo.signingInfo.apkContentsSigners\n        } else {\n            packageInfo.signingInfo.signingCertificateHistory\n        }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const-string v5, "messageDigest.digest(it.toByteArray())"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lkotlin/text/Charsets;->UTF_16:Ljava/nio/charset/Charset;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->allowCertList:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_5
    :goto_2
    return v0
.end method

.method private final stateIsSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final updateAvailable()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Landroid/content/ComponentName;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

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

.method private final updateDenyList(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->denyPackageList:Ljava/util/Set;

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

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

    const-string v2, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

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


# virtual methods
.method public availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->maybeLaunchSecureApp()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launchUnsecureApp()V

    :cond_0
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

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
