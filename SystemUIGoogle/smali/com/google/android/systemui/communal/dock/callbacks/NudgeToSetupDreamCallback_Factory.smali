.class public final Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;
.super Ljava/lang/Object;
.source "NudgeToSetupDreamCallback_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;",
        ">;"
    }
.end annotation


# instance fields
.field public final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field public final complicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;",
            ">;"
        }
    .end annotation
.end field

.field public final contentResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final dreamOverlayStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dreams/DreamOverlayStateController;",
            ">;"
        }
    .end annotation
.end field

.field public final dreamSelectedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final notificationIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final notificationLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public final notificationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field public final nudgeClickedActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nudgeDismissedActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final settingUriProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3

    sget-object v0, Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesSetupDreamNotificationIdFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesSetupDreamNotificationIdFactory;

    sget-object v1, Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDreamSettingActionFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDreamSettingActionFactory;

    sget-object v2, Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDismissDreamSettingActionFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/communal/dreams/dagger/SetupDreamModule_ProvidesDismissDreamSettingActionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->complicationProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->dreamSelectedProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->notificationLazyProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->settingUriProvider:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->notificationIdProvider:Ljavax/inject/Provider;

    iput-object v1, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->nudgeClickedActionProvider:Ljavax/inject/Provider;

    iput-object v2, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->nudgeDismissedActionProvider:Ljavax/inject/Provider;

    iput-object p9, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->complicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->dreamOverlayStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object v5, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->dreamSelectedProvider:Ljavax/inject/Provider;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->notificationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->notificationLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->settingUriProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->notificationIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->nudgeClickedActionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->nudgeDismissedActionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v13, p0

    check-cast v13, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p0, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/google/android/systemui/communal/dock/callbacks/NudgeToSetupDreamCallback;-><init>(Landroid/content/Context;Lcom/google/android/systemui/communal/dreams/SetupDreamComplication;Lcom/android/systemui/dreams/DreamOverlayStateController;Ljavax/inject/Provider;Landroid/app/NotificationManager;Ldagger/Lazy;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object p0
.end method
