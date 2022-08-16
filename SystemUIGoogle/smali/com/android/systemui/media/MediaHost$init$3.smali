.class final Lcom/android/systemui/media/MediaHost$init$3;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaHost.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHost;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $location:I

.field public final synthetic this$0:Lcom/android/systemui/media/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$init$3;->this$0:Lcom/android/systemui/media/MediaHost;

    iput p2, p0, Lcom/android/systemui/media/MediaHost$init$3;->$location:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost$init$3;->this$0:Lcom/android/systemui/media/MediaHost;

    iget-object v1, v0, Lcom/android/systemui/media/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget p0, p0, Lcom/android/systemui/media/MediaHost$init$3;->$location:I

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "MediaHostStatesManager#updateHostState"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaHostState;

    invoke-virtual {v0, v2}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/media/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;

    iget-object v0, v1, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaViewController;

    iget-object v3, v3, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaViewController$stateCallback$1;

    invoke-virtual {v3, p0, v2}, Lcom/android/systemui/media/MediaViewController$stateCallback$1;->onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaHostStatesManager;->callbacks:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    invoke-interface {v1, p0, v2}, Lcom/android/systemui/media/MediaHostStatesManager$Callback;->onHostStateChanged(ILcom/android/systemui/media/MediaHostState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
