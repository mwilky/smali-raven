.class public final Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;
.super Ljava/lang/Object;
.source "DreamsSmartspaceController.kt"

# interfaces
.implements Landroid/app/smartspace/SmartspaceSession$OnTargetsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;-><init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/util/concurrency/Execution;Ljava/util/concurrent/Executor;Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;Lcom/android/systemui/smartspace/SmartspacePrecondition;Ljava/util/Optional;Ljava/util/Optional;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDreamsSmartspaceController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DreamsSmartspaceController.kt\ncom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n764#2:223\n855#2,2:224\n*S KotlinDebug\n*F\n+ 1 DreamsSmartspaceController.kt\ncom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1\n*L\n116#1:223\n116#1:224,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object v0, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v0}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/smartspace/SmartspaceTarget;

    iget-object v4, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->targetFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    if-nez v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v3}, Lcom/android/systemui/smartspace/SmartspaceTargetFilter;->filterSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$sessionListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->onTargetsAvailable(Ljava/util/List;)V

    :goto_2
    return-void
.end method
