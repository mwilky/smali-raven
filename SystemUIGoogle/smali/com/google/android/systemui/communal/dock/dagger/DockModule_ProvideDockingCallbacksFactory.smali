.class public final Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;
.super Ljava/lang/Object;
.source "DockModule_ProvideDockingCallbacksFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Set<",
        "Lcom/android/systemui/util/condition/Monitor$Callback;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final dockingAnimationCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final factoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/dagger/ServiceBinderCallbackComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public final mediaShellCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final nestDockManagerServiceCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final nudgeToSetupDreamCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final resourcesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field public final timeoutToUserZeroCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipNotificationControllerFactory;Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback_Factory;Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->resourcesProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->factoryProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->nudgeToSetupDreamCallbackProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->mediaShellCallbackProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->timeoutToUserZeroCallbackProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->nestDockManagerServiceCallbackProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->dockingAnimationCallbackProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->resourcesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->factoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/communal/dock/dagger/ServiceBinderCallbackComponent$Factory;

    iget-object v2, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->nudgeToSetupDreamCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    iget-object v3, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->mediaShellCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;

    iget-object v4, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->timeoutToUserZeroCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/communal/dock/callbacks/TimeoutToUserZeroCallback;

    iget-object v5, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->nestDockManagerServiceCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/systemui/communal/dock/callbacks/nestdockmanagerservice/NestDockManagerServiceCallback;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/dagger/DockModule_ProvideDockingCallbacksFactory;->dockingAnimationCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/communal/dock/callbacks/DockingAnimationCallback;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const v7, 0x7f030033

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_0

    aget-object v10, v0, v9

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.DOCK_EVENT"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-interface {v1, v11}, Lcom/google/android/systemui/communal/dock/dagger/ServiceBinderCallbackComponent$Factory;->create(Landroid/content/Intent;)Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ServiceBinderCallbackComponentImpl;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$ServiceBinderCallbackComponentImpl;->getCallback()Lcom/google/android/systemui/communal/dock/callbacks/ServiceBinderCallback;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/util/condition/Monitor$Callback;

    aput-object v2, v0, v8

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v4, v0, v1

    const/4 v1, 0x3

    aput-object v5, v0, v1

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v6
.end method
