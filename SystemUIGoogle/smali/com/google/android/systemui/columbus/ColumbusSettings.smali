.class public final Lcom/google/android/systemui/columbus/ColumbusSettings;
.super Ljava/lang/Object;
.source "ColumbusSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1547#2:204\n1618#2,3:205\n1849#2,2:208\n*S KotlinDebug\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings\n*L\n113#1:204\n113#1:205,3\n114#1:208,2\n*E\n"
.end annotation


# static fields
.field public static final COLUMBUS_ACTION_URI:Landroid/net/Uri;

.field public static final COLUMBUS_AP_SENSOR_URI:Landroid/net/Uri;

.field public static final COLUMBUS_ENABLED_URI:Landroid/net/Uri;

.field public static final COLUMBUS_LAUNCH_APP_SHORTCUT_URI:Landroid/net/Uri;

.field public static final COLUMBUS_LAUNCH_APP_URI:Landroid/net/Uri;

.field public static final COLUMBUS_LOW_SENSITIVITY_URI:Landroid/net/Uri;

.field public static final COLUMBUS_SILENCE_ALERTS_URI:Landroid/net/Uri;

.field public static final MONITORED_URIS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final backupPackage:Ljava/lang/String;

.field public final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final contentResolver:Landroid/content/ContentResolver;

.field public final listeners:Ljava/util/LinkedHashSet;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const-string v0, "columbus_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    const-string v1, "columbus_ap_sensor"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_AP_SENSOR_URI:Landroid/net/Uri;

    const-string v2, "columbus_action"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_ACTION_URI:Landroid/net/Uri;

    const-string v3, "columbus_launch_app"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LAUNCH_APP_URI:Landroid/net/Uri;

    const-string v4, "columbus_launch_app_shortcut"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LAUNCH_APP_SHORTCUT_URI:Landroid/net/Uri;

    const-string v5, "columbus_low_sensitivity"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sput-object v5, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LOW_SENSITIVITY_URI:Landroid/net/Uri;

    const-string v6, "columbus_silence_alerts"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sput-object v6, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_SILENCE_ALERTS_URI:Landroid/net/Uri;

    const/4 v7, 0x7

    new-array v7, v7, [Landroid/net/Uri;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    invoke-static {v7}, Landroidx/preference/R$drawable;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->MONITORED_URIS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->backupPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    new-instance p1, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusSettings;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->callback:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->MONITORED_URIS:Ljava/util/Set;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    iget-object v2, p3, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object v5, p3, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v6, p3, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->executor:Ljava/util/concurrent/Executor;

    iget-object v7, p3, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->handler:Landroid/os/Handler;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;-><init>(Lcom/google/android/systemui/columbus/ContentResolverWrapper;Landroid/net/Uri;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    iget-object p2, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p3, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTrackerCallback:Lcom/google/android/systemui/columbus/ColumbusContentObserver$userTrackerCallback$1;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {p2, p3, v0}, Lcom/android/systemui/settings/UserTracker;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object p2, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object p2, p2, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p2, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->contentResolver:Lcom/google/android/systemui/columbus/ContentResolverWrapper;

    iget-object p3, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->settingsUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {v1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result v1

    iget-object p2, p2, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, p3, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final isColumbusEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    const-string v1, "columbus_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final selectedAction()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    const-string v1, "columbus_action"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final selectedApp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    const-string v1, "columbus_launch_app"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
