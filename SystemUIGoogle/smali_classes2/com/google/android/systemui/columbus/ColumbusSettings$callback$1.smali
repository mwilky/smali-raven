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
    accessFlags = 0x18
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
    value = "SMAP\nColumbusSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,203:1\n1819#2,2:204\n1819#2,2:206\n1819#2,2:208\n1819#2,2:210\n1819#2,2:212\n1819#2,2:214\n1819#2,2:216\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n*L\n60#1,2:204\n67#1,2:206\n73#1,2:208\n80#1,2:210\n87#1,2:212\n94#1,2:214\n101#1,2:216\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/ColumbusSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->invoke(Landroid/net/Uri;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_ENABLED_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object v0

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

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Lcom/android/systemui/settings/UserTracker;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getBackupPackage$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_1
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_AP_SENSOR_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->useApSensor()Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onUseApSensorChange(Z)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_ACTION_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object v0

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

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Lcom/android/systemui/settings/UserTracker;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getBackupPackage$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LAUNCH_APP_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object v0

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

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Lcom/android/systemui/settings/UserTracker;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getBackupPackage$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LAUNCH_APP_SHORTCUT_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAppShortcut()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedAppShortcutChange(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Lcom/android/systemui/settings/UserTracker;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getBackupPackage$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LOW_SENSITIVITY_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->useLowSensitivity()Z

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {v0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v1, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onLowSensitivityChange(Z)V

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getUserTracker$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Lcom/android/systemui/settings/UserTracker;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getBackupPackage$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/backup/BackupManager;->dataChangedForUser(ILjava/lang/String;)V

    goto :goto_7

    :cond_a
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_SILENCE_ALERTS_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->silenceAlertsEnabled()Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onAlertSilenceEnabledChange(Z)V

    goto :goto_6

    :cond_b
    const-string p0, "Unknown setting change: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_7
    return-void
.end method
