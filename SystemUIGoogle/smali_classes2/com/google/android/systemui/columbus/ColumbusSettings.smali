.class public Lcom/google/android/systemui/columbus/ColumbusSettings;
.super Ljava/lang/Object;
.source "ColumbusSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;,
        Lcom/google/android/systemui/columbus/ColumbusSettings$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1517#2:204\n1588#2,3:205\n1819#2,2:208\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings\n*L\n113#1:204\n113#1,3:205\n114#1,2:208\n*E\n"
.end annotation


# static fields
.field private static final COLUMBUS_ACTION_URI:Landroid/net/Uri;

.field private static final COLUMBUS_AP_SENSOR_URI:Landroid/net/Uri;

.field private static final COLUMBUS_ENABLED_URI:Landroid/net/Uri;

.field private static final COLUMBUS_LAUNCH_APP_SHORTCUT_URI:Landroid/net/Uri;

.field private static final COLUMBUS_LAUNCH_APP_URI:Landroid/net/Uri;

.field private static final COLUMBUS_LOW_SENSITIVITY_URI:Landroid/net/Uri;

.field private static final COLUMBUS_SILENCE_ALERTS_URI:Landroid/net/Uri;

.field public static final Companion:Lcom/google/android/systemui/columbus/ColumbusSettings$Companion;

.field private static final MONITORED_URIS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final backupPackage:Ljava/lang/String;

.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final contentObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->Companion:Lcom/google/android/systemui/columbus/ColumbusSettings$Companion;

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

    invoke-static {v7}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->MONITORED_URIS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userTracker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentObserverFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/Set;

    new-instance p1, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusSettings;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->callback:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->MONITORED_URIS:Ljava/util/Set;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

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

    check-cast v0, Landroid/net/Uri;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->callback:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->create(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentObservers:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->activate()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final synthetic access$getBackupPackage$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->backupPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCOLUMBUS_ACTION_URI$cp()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_ACTION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getCOLUMBUS_AP_SENSOR_URI$cp()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_AP_SENSOR_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getCOLUMBUS_ENABLED_URI$cp()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getCOLUMBUS_LAUNCH_APP_SHORTCUT_URI$cp()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LAUNCH_APP_SHORTCUT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getCOLUMBUS_LAUNCH_APP_URI$cp()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LAUNCH_APP_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getCOLUMBUS_LOW_SENSITIVITY_URI$cp()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LOW_SENSITIVITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getCOLUMBUS_SILENCE_ALERTS_URI$cp()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_SILENCE_ALERTS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final synthetic access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method


# virtual methods
.method public isColumbusEnabled()Z
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

.method public registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public selectedAction()Ljava/lang/String;
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

.method public selectedApp()Ljava/lang/String;
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

.method public selectedAppShortcut()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    const-string v1, "columbus_launch_app_shortcut"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public silenceAlertsEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    const-string v1, "columbus_silence_alerts"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public unregisterColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public useApSensor()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    const-string v1, "columbus_ap_sensor"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public useLowSensitivity()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    const-string v1, "columbus_low_sensitivity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
