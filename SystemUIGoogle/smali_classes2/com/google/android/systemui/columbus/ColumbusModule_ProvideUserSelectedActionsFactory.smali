.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideUserSelectedActionsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/google/android/systemui/columbus/actions/UserAction;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final launchAppProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchApp;",
            ">;"
        }
    .end annotation
.end field

.field private final launchOpaProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchOpa;",
            ">;"
        }
    .end annotation
.end field

.field private final launchOverviewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchOverview;",
            ">;"
        }
    .end annotation
.end field

.field private final manageMediaProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/ManageMedia;",
            ">;"
        }
    .end annotation
.end field

.field private final openNotificationShadeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;",
            ">;"
        }
    .end annotation
.end field

.field private final takeScreenshotProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/TakeScreenshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchOpa;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/ManageMedia;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/TakeScreenshot;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchOverview;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchApp;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->launchOpaProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->manageMediaProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->takeScreenshotProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->launchOverviewProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->openNotificationShadeProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->launchAppProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchOpa;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/ManageMedia;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/TakeScreenshot;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchOverview;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/actions/LaunchApp;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;"
        }
    .end annotation

    new-instance v7, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideUserSelectedActions(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Lcom/google/android/systemui/columbus/actions/ManageMedia;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/google/android/systemui/columbus/actions/LaunchOverview;Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/actions/LaunchOpa;",
            "Lcom/google/android/systemui/columbus/actions/ManageMedia;",
            "Lcom/google/android/systemui/columbus/actions/TakeScreenshot;",
            "Lcom/google/android/systemui/columbus/actions/LaunchOverview;",
            "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;",
            "Lcom/google/android/systemui/columbus/actions/LaunchApp;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/systemui/columbus/actions/UserAction;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideUserSelectedActions(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Lcom/google/android/systemui/columbus/actions/ManageMedia;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/google/android/systemui/columbus/actions/LaunchOverview;Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->get()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/systemui/columbus/actions/UserAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->launchOpaProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->manageMediaProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/systemui/columbus/actions/ManageMedia;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->takeScreenshotProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/columbus/actions/TakeScreenshot;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->launchOverviewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/columbus/actions/LaunchOverview;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->openNotificationShadeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->launchAppProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/google/android/systemui/columbus/actions/LaunchApp;

    invoke-static/range {v1 .. v6}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideUserSelectedActionsFactory;->provideUserSelectedActions(Lcom/google/android/systemui/columbus/actions/LaunchOpa;Lcom/google/android/systemui/columbus/actions/ManageMedia;Lcom/google/android/systemui/columbus/actions/TakeScreenshot;Lcom/google/android/systemui/columbus/actions/LaunchOverview;Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
