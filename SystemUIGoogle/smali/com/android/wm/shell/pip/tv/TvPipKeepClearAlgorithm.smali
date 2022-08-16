.class public final Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;
.super Ljava/lang/Object;
.source "TvPipKeepClearAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$Placement;,
        Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTvPipKeepClearAlgorithm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TvPipKeepClearAlgorithm.kt\ncom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,772:1\n1609#2:773\n1849#2:774\n1850#2:776\n1610#2:777\n2468#2,3:778\n855#2,2:781\n2190#2,14:783\n764#2:797\n855#2,2:798\n1000#2,2:800\n1000#2,2:802\n764#2:804\n855#2,2:805\n764#2:807\n855#2,2:808\n1895#2,14:810\n2190#2,14:824\n1895#2,14:838\n2190#2,14:852\n2190#2,14:866\n1849#2,2:880\n1849#2,2:882\n1849#2,2:884\n1849#2,2:886\n1000#2,2:888\n1#3:775\n1#3:1010\n13536#4,2:890\n13536#4,2:892\n15971#4,14:894\n13808#4,14:908\n13808#4,14:922\n15971#4,14:936\n13536#4,2:950\n13536#4,2:952\n15971#4,14:954\n13808#4,14:968\n13808#4,14:982\n15971#4,14:996\n*S KotlinDebug\n*F\n+ 1 TvPipKeepClearAlgorithm.kt\ncom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm\n*L\n152#1:773\n152#1:774\n152#1:776\n152#1:777\n175#1:778,3\n196#1:781,2\n269#1:783,14\n294#1:797\n294#1:798,2\n299#1:800,2\n338#1:802,2\n345#1:804\n345#1:805,2\n346#1:807\n346#1:808,2\n352#1:810,14\n365#1:824,14\n381#1:838,14\n394#1:852,14\n406#1:866,14\n491#1:880,2\n492#1:882,2\n521#1:884,2\n522#1:886,2\n559#1:888,2\n152#1:775\n642#1:890,2\n654#1:892,2\n659#1:894,14\n660#1:908,14\n661#1:922,14\n662#1:936,14\n685#1:950,2\n692#1:952,2\n701#1:954,14\n702#1:968,14\n703#1:982,14\n704#1:996,14\n*E\n"
.end annotation


# instance fields
.field public lastAreasOverlappingUnstashPosition:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public maxRestrictedDistanceFraction:D

.field public movementBounds:Landroid/graphics/Rect;

.field public pipAreaPadding:I

.field public pipGravity:I

.field public pipPermanentDecorInsets:Landroid/graphics/Insets;

.field public screenSize:Landroid/util/Size;

.field public stashOffset:I

.field public transformedMovementBounds:Landroid/graphics/Rect;

.field public transformedScreenBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    const/16 v0, 0x30

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->stashOffset:I

    const-wide v0, 0x3fc3333333333333L    # 0.15

    iput-wide v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    const/16 v0, 0x55

    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedScreenBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->lastAreasOverlappingUnstashPosition:Ljava/util/Set;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipPermanentDecorInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public static candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    mul-int/2addr v0, v0

    mul-int/2addr p0, p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static getStashType(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-le p0, p1, :cond_4

    const/4 v0, 0x3

    :cond_4
    :goto_0
    return v0
.end method

.method public static intersectsX(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static sweepLineFindEarliestGap(Ljava/util/ArrayList;III)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;
    .locals 7

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2, v2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;-><init>(ZZIZ)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$sweepLineFindEarliestGap$$inlined$sortBy$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    iget-boolean v3, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    if-nez v3, :cond_2

    iget-boolean v4, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->open:Z

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_1
    if-nez v0, :cond_7

    iget v4, v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    if-le v4, p2, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_4

    move v3, p3

    goto :goto_2

    :cond_4
    move v3, p1

    :goto_2
    add-int/lit8 v5, v1, 0x1

    if-ltz v5, :cond_5

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v6

    if-gt v5, v6, :cond_5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    check-cast v5, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    if-eqz v5, :cond_6

    iget v5, v5, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    sub-int/2addr v4, v3

    if-ge v5, v4, :cond_7

    :cond_6
    return-object v2

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    return-object p0
.end method


# virtual methods
.method public final findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/LinkedHashSet;)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->transformedMovementBounds:Landroid/graphics/Rect;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    iget-object v6, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-double v6, v6

    iget-wide v8, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    add-int/2addr v6, v7

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-double v12, v12

    cmpl-double v12, v12, v4

    if-ltz v12, :cond_1

    goto :goto_1

    :cond_1
    move v11, v8

    :goto_1
    if-eqz v11, :cond_0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;

    invoke-direct {v4, v0, v5}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;I)V

    invoke-static {v3, v4, v8}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;Z)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v11, :cond_3

    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$$inlined$sortBy$1;

    invoke-direct {v4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$$inlined$sortBy$1;-><init>()V

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    iget-object v4, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-double v4, v4

    iget-wide v9, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->maxRestrictedDistanceFraction:D

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_14

    const-wide v9, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v7, v4, v9

    if-lez v7, :cond_4

    const v4, 0x7fffffff

    goto :goto_2

    :cond_4
    const-wide/high16 v9, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v7, v4, v9

    if-gez v7, :cond_5

    const/high16 v4, -0x80000000

    goto :goto_2

    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v10, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    sub-int/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v10, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->isPipAnchoredToCorner()Z

    move-result v12

    xor-int/2addr v12, v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;

    invoke-direct {v14, v0, v10, v13}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v14, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v15, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    goto :goto_4

    :cond_6
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v14, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveUp$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v8, v15}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v14, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    add-int/2addr v8, v14

    iget v14, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-static {v13, v8, v14, v15}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->sweepLineFindEarliestGap(Ljava/util/ArrayList;III)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    move-result-object v8

    iget-boolean v13, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    iget v13, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    :goto_6
    iget v14, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    iget v15, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    sub-int/2addr v14, v13

    iget-boolean v8, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_7

    :cond_9
    move v8, v4

    :goto_7
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v13, v9, v14}, Landroid/graphics/Rect;->offset(II)V

    iget v15, v13, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    if-le v15, v11, :cond_a

    const/4 v11, 0x1

    goto :goto_8

    :cond_a
    const/4 v11, 0x0

    :goto_8
    invoke-static {v13, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v15

    const/16 v16, 0x1

    xor-int/lit8 v15, v15, 0x1

    if-eqz v11, :cond_b

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v11, v8, :cond_b

    if-nez v15, :cond_b

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v12, :cond_11

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;

    invoke-direct {v11, v0, v10, v8}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11, v12}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findMinMoveDown$generateEvents$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_d
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    add-int/2addr v11, v12

    iget v12, v10, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v8, v11, v12, v10}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->sweepLineFindEarliestGap(Ljava/util/ArrayList;III)Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;

    move-result-object v8

    iget v10, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->pos:I

    neg-int v10, v10

    iget-boolean v11, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->unrestricted:Z

    iget-boolean v8, v8, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$SweepLineEvent;->start:Z

    if-eqz v8, :cond_e

    const/4 v8, 0x0

    goto :goto_b

    :cond_e
    iget v8, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    :goto_b
    iget v12, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v12

    add-int/2addr v10, v8

    if-eqz v11, :cond_f

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_c

    :cond_f
    move v8, v4

    :goto_c
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    iget v9, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    if-ge v9, v12, :cond_10

    const/4 v9, 0x1

    goto :goto_d

    :cond_10
    const/4 v9, 0x0

    :goto_d
    invoke-static {v11, v7}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->intersectsY(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    const/4 v12, 0x1

    xor-int/2addr v7, v12

    if-eqz v9, :cond_11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-gt v9, v8, :cond_11

    if-nez v7, :cond_11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 v8, 0x0

    const/4 v11, 0x1

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    new-instance v2, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$$inlined$sortBy$2;

    invoke-direct {v2, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$$inlined$sortBy$2;-><init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;Landroid/graphics/Rect;)V

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_13
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot round NaN value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/LinkedHashSet;)Landroid/graphics/Rect;
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findFreeMovePosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/LinkedHashSet;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-interface {p3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3, p2, p3, p4}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->findRelaxedMovePosition(ILandroid/graphics/Rect;Ljava/util/Set;Ljava/util/LinkedHashSet;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_4

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_4
    move-object p3, p1

    check-cast p3, Landroid/graphics/Rect;

    invoke-static {p3, p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p3

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0, p2}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->candidateCost(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    if-le p3, v0, :cond_6

    move-object p1, p4

    move p3, v0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_5

    goto :goto_1

    :goto_2
    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public final fromTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 12

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    :goto_1
    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Point;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v7, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 p1, 0x4

    new-array v7, p1, [Landroid/graphics/Point;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    aput-object v4, v7, v3

    const/4 v4, 0x2

    aput-object v5, v7, v4

    const/4 v4, 0x3

    aput-object v6, v7, v4

    move v5, v8

    :cond_2
    :goto_2
    if-ge v5, p1, :cond_6

    aget-object v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    iget v9, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    const/16 v10, 0x33

    if-eq v9, v4, :cond_3

    const/16 v11, 0x13

    if-eq v9, v11, :cond_3

    if-eq v9, v10, :cond_3

    const/16 v11, 0x53

    if-eq v9, v11, :cond_3

    const/16 v11, 0x30

    if-eq v9, v11, :cond_3

    const/16 v11, 0x31

    if-eq v9, v11, :cond_3

    move v11, v8

    goto :goto_3

    :cond_3
    move v11, v3

    :goto_3
    if-eqz v11, :cond_4

    iget v11, v6, Landroid/graphics/Point;->x:I

    sub-int v11, v1, v11

    iput v11, v6, Landroid/graphics/Point;->x:I

    :cond_4
    if-eq v9, v10, :cond_5

    const/16 v10, 0x35

    if-eq v9, v10, :cond_5

    move v9, v8

    goto :goto_4

    :cond_5
    move v9, v3

    :goto_4
    if-eqz v9, :cond_2

    iget v9, v6, Landroid/graphics/Point;->y:I

    sub-int v9, v2, v9

    iput v9, v6, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    move v0, v8

    :goto_5
    if-ge v0, p1, :cond_7

    aget-object v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v1, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    iput v5, v1, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_7
    aget-object p0, v7, v8

    iget p1, p0, Landroid/graphics/Point;->y:I

    move v0, v3

    :goto_6
    add-int/lit8 v1, v0, 0x1

    aget-object v2, v7, v0

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le p1, v5, :cond_8

    move-object p0, v2

    move p1, v5

    :cond_8
    if-ne v0, v4, :cond_f

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v7, v8

    iget p1, p0, Landroid/graphics/Point;->x:I

    move v1, v3

    :goto_7
    add-int/lit8 v2, v1, 0x1

    aget-object v5, v7, v1

    iget v6, v5, Landroid/graphics/Point;->x:I

    if-ge p1, v6, :cond_9

    move-object p0, v5

    move p1, v6

    :cond_9
    if-ne v1, v4, :cond_e

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v7, v8

    iget p1, p0, Landroid/graphics/Point;->y:I

    move v2, v3

    :goto_8
    add-int/lit8 v5, v2, 0x1

    aget-object v6, v7, v2

    iget v9, v6, Landroid/graphics/Point;->y:I

    if-ge p1, v9, :cond_a

    move-object p0, v6

    move p1, v9

    :cond_a
    if-ne v2, v4, :cond_d

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v7, v8

    iget p1, p0, Landroid/graphics/Point;->x:I

    :goto_9
    add-int/lit8 v5, v3, 0x1

    aget-object v6, v7, v3

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-le p1, v8, :cond_b

    move-object p0, v6

    move p1, v8

    :cond_b
    if-ne v3, v4, :cond_c

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Landroid/graphics/Point;->x:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_c
    move v3, v5

    goto :goto_9

    :cond_d
    move v2, v5

    goto :goto_8

    :cond_e
    move v1, v2

    goto :goto_7

    :cond_f
    move v0, v1

    goto :goto_6
.end method

.method public final isPipAnchoredToCorner()Z
    .locals 6

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p0, 0x7

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v4, p0, 0x70

    const/16 v5, 0x30

    if-ne v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    and-int/lit8 p0, p0, 0x70

    const/16 v5, 0x50

    if-ne p0, v5, :cond_3

    move p0, v1

    goto :goto_3

    :cond_3
    move p0, v2

    :goto_3
    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    :goto_5
    if-nez v4, :cond_7

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move p0, v2

    goto :goto_7

    :cond_7
    :goto_6
    move p0, v1

    :goto_7
    if-eqz v0, :cond_8

    if-eqz p0, :cond_8

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    return v1
.end method

.method public final shouldTransformRotate()Z
    .locals 4

    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    and-int/lit8 p0, p0, 0x70

    const/16 v0, 0x30

    if-eq p0, v0, :cond_3

    const/16 v0, 0x50

    if-eq p0, v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public final toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v5, v6, p1}, Landroid/graphics/Point;-><init>(II)V

    const/4 p1, 0x4

    new-array v6, p1, [Landroid/graphics/Point;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v3, 0x3

    aput-object v5, v6, v3

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->shouldTransformRotate()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v7

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v4, v6, v1

    add-int/lit8 v1, v1, 0x1

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v8, v4, Landroid/graphics/Point;->y:I

    iput v8, v4, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    add-int/2addr v5, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->screenSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    :cond_1
    move v4, v7

    :cond_2
    :goto_1
    if-ge v4, p1, :cond_6

    aget-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    iget v8, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipGravity:I

    const/16 v9, 0x33

    if-eq v8, v3, :cond_3

    const/16 v10, 0x13

    if-eq v8, v10, :cond_3

    if-eq v8, v9, :cond_3

    const/16 v10, 0x53

    if-eq v8, v10, :cond_3

    const/16 v10, 0x30

    if-eq v8, v10, :cond_3

    const/16 v10, 0x31

    if-eq v8, v10, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    move v10, v2

    :goto_2
    if-eqz v10, :cond_4

    iget v10, v5, Landroid/graphics/Point;->x:I

    sub-int v10, v0, v10

    iput v10, v5, Landroid/graphics/Point;->x:I

    :cond_4
    if-eq v8, v9, :cond_5

    const/16 v9, 0x35

    if-eq v8, v9, :cond_5

    move v8, v7

    goto :goto_3

    :cond_5
    move v8, v2

    :goto_3
    if-eqz v8, :cond_2

    iget v8, v5, Landroid/graphics/Point;->y:I

    sub-int v8, v1, v8

    iput v8, v5, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_6
    aget-object p0, v6, v7

    iget p1, p0, Landroid/graphics/Point;->y:I

    move v0, v2

    :goto_4
    add-int/lit8 v1, v0, 0x1

    aget-object v4, v6, v0

    iget v5, v4, Landroid/graphics/Point;->y:I

    if-le p1, v5, :cond_7

    move-object p0, v4

    move p1, v5

    :cond_7
    if-ne v0, v3, :cond_e

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v6, v7

    iget p1, p0, Landroid/graphics/Point;->x:I

    move v1, v2

    :goto_5
    add-int/lit8 v4, v1, 0x1

    aget-object v5, v6, v1

    iget v8, v5, Landroid/graphics/Point;->x:I

    if-ge p1, v8, :cond_8

    move-object p0, v5

    move p1, v8

    :cond_8
    if-ne v1, v3, :cond_d

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v6, v7

    iget p1, p0, Landroid/graphics/Point;->y:I

    move v4, v2

    :goto_6
    add-int/lit8 v5, v4, 0x1

    aget-object v8, v6, v4

    iget v9, v8, Landroid/graphics/Point;->y:I

    if-ge p1, v9, :cond_9

    move-object p0, v8

    move p1, v9

    :cond_9
    if-ne v4, v3, :cond_c

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v4, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v6, v7

    iget p1, p0, Landroid/graphics/Point;->x:I

    :goto_7
    add-int/lit8 v5, v2, 0x1

    aget-object v7, v6, v2

    iget v8, v7, Landroid/graphics/Point;->x:I

    if-le p1, v8, :cond_a

    move-object p0, v7

    move p1, v8

    :cond_a
    if-ne v2, v3, :cond_b

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Landroid/graphics/Point;->x:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0, v0, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_b
    move v2, v5

    goto :goto_7

    :cond_c
    move v4, v5

    goto :goto_6

    :cond_d
    move v1, v4

    goto :goto_5

    :cond_e
    move v0, v1

    goto :goto_4
.end method

.method public final transformAndFilterAreas(Landroid/util/ArraySet;)Ljava/util/LinkedHashSet;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->movementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->toTransformedSpace(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
