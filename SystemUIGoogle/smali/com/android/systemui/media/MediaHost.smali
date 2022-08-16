.class public final Lcom/android/systemui/media/MediaHost;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Lcom/android/systemui/media/MediaHostState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaHost.kt\ncom/android/systemui/media/MediaHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,354:1\n1849#2,2:355\n*S KotlinDebug\n*F\n+ 1 MediaHost.kt\ncom/android/systemui/media/MediaHost\n*L\n179#1:355,2\n*E\n"
.end annotation


# instance fields
.field public final currentBounds:Landroid/graphics/Rect;

.field public final currentClipping:Landroid/graphics/Rect;

.field public hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

.field public inited:Z

.field public final listener:Lcom/android/systemui/media/MediaHost$listener$1;

.field public listeningToMediaData:Z

.field public location:I

.field public final mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field public final mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field public final state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

.field public final tmpLocationOnScreen:[I

.field public visibleChangedListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iput-object p2, p0, Lcom/android/systemui/media/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    iput-object p3, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iput-object p4, p0, Lcom/android/systemui/media/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/media/MediaHost;->location:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    const/4 p1, 0x2

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->currentClipping:Landroid/graphics/Rect;

    new-instance p1, Lcom/android/systemui/media/MediaHost$listener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHost$listener$1;-><init>(Lcom/android/systemui/media/MediaHost;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost;->listener:Lcom/android/systemui/media/MediaHost$listener$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final copy()Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getCurrentBounds()Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    aget v0, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    sub-int/2addr v5, v0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->tmpLocationOnScreen:[I

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v3, v0

    if-ge v5, v2, :cond_0

    move v2, v1

    move v5, v2

    :cond_0
    if-ge v3, v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v1, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->currentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    return-object p0
.end method

.method public final getExpansion()F
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->expansion:F

    return p0
.end method

.method public final getFalsingProtectionNeeded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    return p0
.end method

.method public final getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    return-object p0
.end method

.method public final getShowsOnlyActiveMedia()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    return p0
.end method

.method public final getVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    return p0
.end method

.method public final init(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHost;->inited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/media/MediaHost;->inited:Z

    iput p1, p0, Lcom/android/systemui/media/MediaHost;->location:I

    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object v3, v1, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v2, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    new-instance v3, Lcom/android/systemui/media/MediaHierarchyManager$register$1;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager$register$1;-><init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/media/MediaHierarchyManager;)V

    iget-object v4, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    iget v4, p0, Lcom/android/systemui/media/MediaHost;->location:I

    aput-object p0, v3, v4

    iget v3, v1, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    const/4 v5, -0x1

    if-ne v4, v3, :cond_1

    iput v5, v1, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    :cond_1
    iget v3, v1, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-ne v4, v3, :cond_2

    iput v5, v1, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZI)V

    iput-object v2, p0, Lcom/android/systemui/media/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setListeningToMediaData(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaHost$init$1;-><init>(Lcom/android/systemui/media/MediaHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaHost$init$2;-><init>(Lcom/android/systemui/media/MediaHost;I)V

    iput-object v1, v0, Lcom/android/systemui/util/animation/UniqueObjectHostView;->measurementManager:Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    new-instance v1, Lcom/android/systemui/media/MediaHost$init$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/MediaHost$init$3;-><init>(Lcom/android/systemui/media/MediaHost;I)V

    iput-object v1, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->updateViewVisibility()V

    return-void
.end method

.method public final setExpansion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    return-void
.end method

.method public final setListeningToMediaData(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHost;->listeningToMediaData:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHost;->listeningToMediaData:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->listener:Lcom/android/systemui/media/MediaHost$listener$1;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaHost;->listener:Lcom/android/systemui/media/MediaHost$listener$1;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    iget-object p1, p1, Lcom/android/systemui/media/MediaDataFilter;->_listeners:Ljava/util/LinkedHashSet;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateViewVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v1, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    move-result v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaHost;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    iget-object v1, v1, Lcom/android/systemui/media/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/MediaDataFilter;

    iget-object v3, v1, Lcom/android/systemui/media/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-nez v3, :cond_2

    iget-object v1, v1, Lcom/android/systemui/media/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/SmartspaceMediaData;

    iget-boolean v3, v1, Lcom/android/systemui/media/SmartspaceMediaData;->isActive:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/media/SmartspaceMediaData;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    iget-boolean v3, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v0, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eq v2, v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/media/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    iget-boolean v2, v2, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->visible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-void
.end method
