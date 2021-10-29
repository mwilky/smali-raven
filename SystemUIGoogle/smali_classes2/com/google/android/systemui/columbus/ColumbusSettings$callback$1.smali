.class final Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColumbusSettings.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusSettings;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;)V
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
    value = "SMAP\nColumbusSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,204:1\n1819#2,2:205\n1819#2,2:207\n1819#2,2:209\n1819#2,2:211\n1819#2,2:213\n1819#2,2:215\n1819#2,2:217\n*E\n*S KotlinDebug\n*F\n+ 1 ColumbusSettings.kt\ncom/google/android/systemui/columbus/ColumbusSettings$callback$1\n*L\n57#1,2:205\n63#1,2:207\n69#1,2:209\n75#1,2:211\n81#1,2:213\n87#1,2:215\n93#1,2:217\n*E\n"
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
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_ENABLED_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->isColumbusEnabled()Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onColumbusEnabledChange(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_AP_SENSOR_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

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

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onUseApSensorChange(Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_ACTION_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAction()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedActionChange(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LAUNCH_APP_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedAppChange(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LAUNCH_APP_SHORTCUT_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAppShortcut()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onSelectedAppShortcutChange(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_LOW_SENSITIVITY_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->useLowSensitivity()Z

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusSettings$callback$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusSettings;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getListeners$p(Lcom/google/android/systemui/columbus/ColumbusSettings;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onLowSensitivityChange(Z)V

    goto :goto_5

    :cond_5
    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusSettings;->access$getCOLUMBUS_SILENCE_ALERTS_URI$cp()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

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

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;->onAlertSilenceEnabledChange(Z)V

    goto :goto_6

    :cond_6
    const-string p0, "Unknown setting change: "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Columbus/Settings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
