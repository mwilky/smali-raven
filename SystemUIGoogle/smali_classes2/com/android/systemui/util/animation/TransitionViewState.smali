.class public final Lcom/android/systemui/util/animation/TransitionViewState;
.super Ljava/lang/Object;
.source "TransitionLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransitionLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransitionLayout.kt\ncom/android/systemui/util/animation/TransitionViewState\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,394:1\n355#2,7:395\n*E\n*S KotlinDebug\n*F\n+ 1 TransitionLayout.kt\ncom/android/systemui/util/animation/TransitionViewState\n*L\n344#1,7:395\n*E\n"
.end annotation


# instance fields
.field private alpha:F

.field private final contentTranslation:Landroid/graphics/PointF;

.field private height:I

.field private final translation:Landroid/graphics/PointF;

.field private widgetStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/util/animation/WidgetState;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    new-instance v1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iput v2, v1, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    iget v2, v0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iput v2, v1, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget v2, v0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    iput v2, v1, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    iget-object v2, v1, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, v1, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget-object v3, v0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, v0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, v1, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/android/systemui/util/animation/WidgetState;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    invoke-static/range {v5 .. v16}, Lcom/android/systemui/util/animation/WidgetState;->copy$default(Lcom/android/systemui/util/animation/WidgetState;FFIIIIFFZILjava/lang/Object;)Lcom/android/systemui/util/animation/WidgetState;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public final getAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    return p0
.end method

.method public final getContentTranslation()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    return p0
.end method

.method public final getTranslation()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getWidgetStates()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/util/animation/WidgetState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    return p0
.end method

.method public final initFromLayout(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "transitionLayout"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/util/animation/TransitionViewState;->widgetStates:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/systemui/util/animation/WidgetState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x180

    const/16 v19, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v19}, Lcom/android/systemui/util/animation/WidgetState;-><init>(FFIIIIFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v7, Lcom/android/systemui/util/animation/WidgetState;

    const-string v5, "child"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/android/systemui/util/animation/WidgetState;->initFromLayout(Landroid/view/View;)V

    if-lt v4, v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    iget-object v1, v0, Lcom/android/systemui/util/animation/TransitionViewState;->translation:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, v0, Lcom/android/systemui/util/animation/TransitionViewState;->contentTranslation:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/TransitionViewState;->alpha:F

    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/TransitionViewState;->height:I

    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/animation/TransitionViewState;->width:I

    return-void
.end method
