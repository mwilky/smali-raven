.class public final Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;
.super Ljava/lang/Object;
.source "DreamsSmartspaceController.kt"


# instance fields
.field public final context:Landroid/content/Context;

.field public final execution:Lcom/android/systemui/util/concurrency/Execution;

.field public filterListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;

.field public listeners:Ljava/util/LinkedHashSet;

.field public final plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field public final precondition:Lcom/android/systemui/smartspace/SmartspacePrecondition;

.field public preconditionListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$preconditionListener$1;

.field public session:Landroid/app/smartspace/SmartspaceSession;

.field public final sessionListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;

.field public final smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

.field public final smartspaceViewComponentFactory:Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;

.field public smartspaceViews:Ljava/util/LinkedHashSet;

.field public stateChangeListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;

.field public targetFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/util/concurrency/Execution;Ljava/util/concurrent/Executor;Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;Lcom/android/systemui/smartspace/SmartspacePrecondition;Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/smartspace/SmartspaceManager;",
            "Lcom/android/systemui/util/concurrency/Execution;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;",
            "Lcom/android/systemui/smartspace/SmartspacePrecondition;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/smartspace/SmartspaceTargetFilter;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    iput-object p3, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    iput-object p4, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViewComponentFactory:Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;

    iput-object p6, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->precondition:Lcom/android/systemui/smartspace/SmartspacePrecondition;

    const/4 p1, 0x0

    invoke-virtual {p8, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    iput-object p2, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-virtual {p7, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->targetFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->listeners:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViews:Ljava/util/LinkedHashSet;

    new-instance p1, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$preconditionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$preconditionListener$1;-><init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->preconditionListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$preconditionListener$1;

    invoke-interface {p6, p1}, Lcom/android/systemui/smartspace/SmartspacePrecondition;->addListener(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$preconditionListener$1;)V

    new-instance p1, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;-><init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->filterListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;

    iget-object p2, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->targetFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/android/systemui/smartspace/SmartspaceTargetFilter;->addListener(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;)V

    :goto_0
    new-instance p1, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;-><init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->stateChangeListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;

    new-instance p1, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;-><init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->sessionListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;

    return-void
.end method


# virtual methods
.method public final connectSession()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViews:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->precondition:Lcom/android/systemui/smartspace/SmartspacePrecondition;

    invoke-interface {v0}, Lcom/android/systemui/smartspace/SmartspacePrecondition;->conditionsMet()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceManager:Landroid/app/smartspace/SmartspaceManager;

    new-instance v1, Landroid/app/smartspace/SmartspaceConfig$Builder;

    iget-object v2, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->context:Landroid/content/Context;

    const-string v3, "dream"

    invoke-direct {v1, v2, v3}, Landroid/app/smartspace/SmartspaceConfig$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceConfig$Builder;->build()Landroid/app/smartspace/SmartspaceConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/smartspace/SmartspaceManager;->createSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;)Landroid/app/smartspace/SmartspaceSession;

    move-result-object v0

    const-string v1, "DreamsSmartspaceCtrlr"

    const-string v2, "Starting smartspace session for dream"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->uiExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->sessionListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;

    invoke-virtual {v0, v1, v2}, Landroid/app/smartspace/SmartspaceSession;->addOnTargetsAvailableListener(Ljava/util/concurrent/Executor;Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    iput-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    new-instance v1, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$connectSession$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$connectSession$1;-><init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceSession;->requestSmartspaceUpdate()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViews:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->listeners:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->sessionListener:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;

    invoke-virtual {v0, v1}, Landroid/app/smartspace/SmartspaceSession;->removeOnTargetsAvailableListener(Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;)V

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceSession;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->session:Landroid/app/smartspace/SmartspaceSession;

    iget-object v1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerSmartspaceEventNotifier(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;)V

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    :goto_2
    const-string p0, "DreamsSmartspaceCtrlr"

    const-string v0, "Ending smartspace session for dream"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
