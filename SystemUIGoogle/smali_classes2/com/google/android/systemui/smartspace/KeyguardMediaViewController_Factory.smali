.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;
.super Ljava/lang/Object;
.source "KeyguardMediaViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
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

.field private final mediaManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final uiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->pluginProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->mediaManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationMediaManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;)",
            "Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;
    .locals 7

    new-instance v6, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->pluginProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->mediaManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;)Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController_Factory;->get()Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    move-result-object p0

    return-object p0
.end method
