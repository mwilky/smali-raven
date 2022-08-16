.class public final Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;
.super Ljava/lang/Object;
.source "SettingsModule_ProvideUserTrackerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final userManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/internal/Factory;I)V
    .locals 0

    iput p5, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->userManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->handlerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    new-instance v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-direct {v4, v0, v1, v2, p0}, Lcom/android/systemui/settings/UserTrackerImpl;-><init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)V

    iget-boolean p0, v4, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput-boolean p0, v4, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    invoke-virtual {v4, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)Lkotlin/Pair;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, v4, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p0, v1, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object p0, v4, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v0, "UserTrackerImpl"

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    :goto_0
    return-object v4

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->dumpManagerProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/settings/dagger/SettingsModule_ProvideUserTrackerFactory;->handlerProvider:Ljavax/inject/Provider;

    new-instance v3, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/systemui/communal/dock/conditions/TimeoutToUserZeroSettingCondition;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
