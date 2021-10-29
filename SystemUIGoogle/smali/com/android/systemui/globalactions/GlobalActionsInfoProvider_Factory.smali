.class public final Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;
.super Ljava/lang/Object;
.source "GlobalActionsInfoProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;"
        }
    .end annotation
.end field

.field private final walletClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->walletClientProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->controlsControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/ControlsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;)",
            "Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/plugins/ActivityStarter;)Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;
    .locals 1

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;-><init>(Landroid/content/Context;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->walletClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->controlsControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/controller/ControlsController;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->newInstance(Landroid/content/Context;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/plugins/ActivityStarter;)Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsInfoProvider_Factory;->get()Lcom/android/systemui/globalactions/GlobalActionsInfoProvider;

    move-result-object p0

    return-object p0
.end method
