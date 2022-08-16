.class public Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;
.super Landroid/view/View;
.source "EdgeLightsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAssistInvocationLights:Ljava/util/ArrayList;

.field public mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field public mListeners:Ljava/util/HashSet;

.field public mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public final mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field public mScreenLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    new-array p3, p3, [Lcom/android/systemui/assist/ui/EdgeLight;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPath:Landroid/graphics/Path;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mListeners:Ljava/util/HashSet;

    const/4 p3, 0x2

    new-array p4, p3, [I

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mScreenLocation:[I

    invoke-static {p1}, Landroidx/fragment/R$id;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    int-to-float v0, p4

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v3, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;

    invoke-direct {v3, p1}, Lcom/android/systemui/assist/ui/PathSpecCornerPathRenderer;-><init>(Landroid/content/Context;)V

    new-instance p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    div-int/lit8 v4, p4, 0x2

    invoke-static {p1}, Landroidx/fragment/R$id;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p4}, Landroid/view/Display;->getRotation()I

    move-result p4

    if-eqz p4, :cond_1

    if-ne p4, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    move v5, p4

    invoke-static {p1}, Landroidx/fragment/R$id;->getDefaultDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p4}, Landroid/view/Display;->getRotation()I

    move-result p4

    if-eqz p4, :cond_3

    if-ne p4, p3, :cond_2

    goto :goto_2

    :cond_2
    iget p3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3

    :cond_3
    :goto_2
    iget p3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_3
    move v6, p3

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;-><init>(Landroid/content/Context;Lcom/android/systemui/assist/ui/CornerPathRenderer;III)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    new-instance p1, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    invoke-direct {p1}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/systemui/assist/ui/EdgeLight;

    const p4, 0x7f0600cf

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/systemui/assist/ui/EdgeLight;

    const p4, 0x7f0600d1

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/systemui/assist/ui/EdgeLight;

    const p4, 0x7f0600d2

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/systemui/assist/ui/EdgeLight;

    const p3, 0x7f0600d0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p2, p1}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(I)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mListeners:Ljava/util/HashSet;

    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/back/BackAnimationController$IBackAnimationImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final getAssistLights()[Lcom/android/systemui/assist/ui/EdgeLight;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->updateRotation()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onConfigurationChanged()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mScreenLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mScreenLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    array-length v2, v0

    const/4 v4, 0x2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    aget-object v2, v0, v1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight$1(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    array-length v2, v0

    if-le v2, v3, :cond_1

    array-length v2, v0

    sub-int/2addr v2, v3

    aget-object v2, v0, v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight$1(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    :cond_1
    array-length v2, v0

    if-le v2, v4, :cond_2

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    move v2, v3

    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_2

    aget-object v5, v0, v2

    invoke-virtual {p0, p1, v5}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight$1(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight$1(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight$1(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_5

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight$1(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->updateRotation()V

    return-void
.end method

.method public final renderLight$1(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPath:Landroid/graphics/Path;

    iget v2, p2, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    iget v3, p2, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    add-float/2addr v3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v2, v4

    add-float/2addr v2, v4

    rem-float/2addr v2, v4

    rem-float/2addr v3, v4

    add-float/2addr v3, v4

    rem-float/2addr v3, v4

    cmpl-float v5, v2, v3

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    iget p2, p2, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 2

    new-instance v0, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lcom/android/keyguard/CarrierTextManager$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0x8

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->updateRotation()V

    :cond_0
    return-void
.end method

.method public final updateRotation()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->setRotation(I)V

    return-void
.end method
