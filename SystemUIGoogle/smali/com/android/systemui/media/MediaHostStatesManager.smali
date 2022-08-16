.class public final Lcom/android/systemui/media/MediaHostStatesManager;
.super Ljava/lang/Object;
.source "MediaHostStatesManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaHostStatesManager$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHostStatesManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHostStatesManager.kt\ncom/android/systemui/media/MediaHostStatesManager\n+ 2 TraceUtils.kt\ncom/android/systemui/util/TraceUtilsKt\n*L\n1#1,132:1\n26#2,5:133\n26#2,5:138\n*S KotlinDebug\n*F\n+ 1 MediaHostStatesManager.kt\ncom/android/systemui/media/MediaHostStatesManager\n*L\n53#1:133,5\n78#1:138,5\n*E\n"
.end annotation


# instance fields
.field public final callbacks:Ljava/util/LinkedHashSet;

.field public final carouselSizes:Ljava/util/LinkedHashMap;

.field public final controllers:Ljava/util/LinkedHashSet;

.field public final mediaHostStates:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->callbacks:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->carouselSizes:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->mediaHostStates:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final updateCarouselDimensions(ILcom/android/systemui/media/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 5

    const-string v0, "MediaHostStatesManager#updateCarouselDimensions"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/media/MediaHostStatesManager;->controllers:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaViewController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "MediaViewController#getMeasurementsForState"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2, p2}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :cond_1
    :try_start_3
    iget-object v2, v2, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    iget v4, v3, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iput v4, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    iget v3, v3, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iput v3, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_4
    iget v3, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    iget v4, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    if-le v3, v4, :cond_3

    iput v3, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    :cond_3
    iget v2, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    iget v3, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    if-le v2, v3, :cond_0

    iput v2, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/MediaHostStatesManager;->carouselSizes:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
