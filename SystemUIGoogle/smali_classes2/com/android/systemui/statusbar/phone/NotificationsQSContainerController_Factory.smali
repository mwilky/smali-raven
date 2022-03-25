.class public final Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;
.super Ljava/lang/Object;
.source "NotificationsQSContainerController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;",
        ">;"
    }
.end annotation


# instance fields
.field private final navigationModeControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;"
        }
    .end annotation
.end field

.field private final overviewProxyServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->viewProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;-><init>(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->navigationModeControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->overviewProxyServiceProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController_Factory;->get()Lcom/android/systemui/statusbar/phone/NotificationsQSContainerController;

    move-result-object p0

    return-object p0
.end method
