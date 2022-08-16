.class public final Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;
.super Ljava/lang/Object;
.source "DreamsSmartspaceController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;",
        ">;"
    }
.end annotation


# instance fields
.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final executionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/Execution;",
            ">;"
        }
    .end annotation
.end field

.field public final optionalPluginProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;>;"
        }
    .end annotation
.end field

.field public final optionalTargetFilterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/smartspace/SmartspaceTargetFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field public final preconditionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/smartspace/SmartspacePrecondition;",
            ">;"
        }
    .end annotation
.end field

.field public final smartspaceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/smartspace/SmartspaceManager;",
            ">;"
        }
    .end annotation
.end field

.field public final smartspaceViewComponentFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;",
            ">;"
        }
    .end annotation
.end field

.field public final uiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/smartspace/SmartspaceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/Execution;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/smartspace/SmartspacePrecondition;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/smartspace/SmartspaceTargetFilter;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->smartspaceManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->executionProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->smartspaceViewComponentFactoryProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->preconditionProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->optionalTargetFilterProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->optionalPluginProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->smartspaceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/smartspace/SmartspaceManager;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->executionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/util/concurrency/Execution;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->smartspaceViewComponentFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->preconditionProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/smartspace/SmartspacePrecondition;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->optionalTargetFilterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController_Factory;->optionalPluginProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ljava/util/Optional;

    new-instance p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;-><init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/util/concurrency/Execution;Ljava/util/concurrent/Executor;Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;Lcom/android/systemui/smartspace/SmartspacePrecondition;Ljava/util/Optional;Ljava/util/Optional;)V

    return-object p0
.end method
