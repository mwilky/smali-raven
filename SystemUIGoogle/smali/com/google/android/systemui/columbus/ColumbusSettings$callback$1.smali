.class final Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColumbusSettings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusSettings;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1849#2,2:204\n1849#2,2:206\n1849#2,2:208\n1849#2,2:210\n1849#2,2:212\n1849#2,2:214\n1849#2,2:216\n*S KotlinDebug\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n*L\n60#1:204,2\n67#1:206,2\n73#1:208,2\n80#1:210,2\n87#1:212,2\n94#1:214,2\n101#1:216,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_ENABLED_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onColumbusEnabledChange(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->backupPackage:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_AP_SENSOR_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    const-string v2, "columbus_ap_sensor"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onUseApSensorChange()V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_ACTION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedActionChange(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->backupPackage:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LAUNCH_APP_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedAppChange(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->backupPackage:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LAUNCH_APP_SHORTCUT_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    const-string v1, "columbus_launch_app_shortcut"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedAppShortcutChange(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->backupPackage:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_9
    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_LOW_SENSITIVITY_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    const-string v3, "columbus_low_sensitivity"

    invoke-static {v0, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, v1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onLowSensitivityChange(Z)V

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->backupPackage:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto :goto_7

    :cond_c
    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusSettings;->COLUMBUS_SILENCE_ALERTS_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v0, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->contentResolver:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/ColumbusSettings;->userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    const-string v3, "columbus_silence_alerts"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_d

    move v1, v2

    :cond_d
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {p1, v1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onAlertSilenceEnabledChange(Z)V

    goto :goto_6

    :cond_e
    const-string p0, "Unknown setting change: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
