.class public Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;
.super Landroid/view/View;
.source "EdgeLightsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;
    }
.end annotation


# instance fields
.field private mAssistInvocationLights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/assist/ui/EdgeLight;",
            ">;"
        }
    .end annotation
.end field

.field private mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private final mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field private mScreenLocation:[I


# direct methods
.method public static synthetic $r8$lambda$5lfZUMvwSsHMajheOhJUpazO8ew(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;[Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->lambda$setAssistLights$1([Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C1RZM80eXAHwajfocKWiEV0cfY0(Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->lambda$commitModeTransition$3(Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MBU1_S6ngN_49yeKBabogW822n4(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->lambda$setAssistLights$0(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tqaaxlI2aAHjHd2tWpyCD-PVLgc(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->lambda$commitModeTransition$2(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V

    return-void
.end method

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

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPath:Landroid/graphics/Path;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mListeners:Ljava/util/Set;

    const/4 p3, 0x2

    new-array p4, p3, [I

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mScreenLocation:[I

    const/high16 p4, 0x40400000    # 3.0f

    invoke-static {p4, p1}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->convertDpToPx(FLandroid/content/Context;)I

    move-result p4

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

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v5

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getHeight(Landroid/content/Context;)I

    move-result v6

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

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    new-instance p3, Lcom/android/systemui/assist/ui/EdgeLight;

    sget p4, Lcom/android/systemui/R$color;->edge_light_blue:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    new-instance p3, Lcom/android/systemui/assist/ui/EdgeLight;

    sget p4, Lcom/android/systemui/R$color;->edge_light_red:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4, v0, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    new-instance p3, Lcom/android/systemui/assist/ui/EdgeLight;

    sget p4, Lcom/android/systemui/R$color;->edge_light_yellow:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-direct {p3, p4, v0, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    new-instance p2, Lcom/android/systemui/assist/ui/EdgeLight;

    sget p3, Lcom/android/systemui/R$color;->edge_light_green:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p2, p1, v0, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$commitModeTransition$2(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p1, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;->onModeStarted(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    return-void
.end method

.method private static synthetic lambda$commitModeTransition$3(Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/ui/EdgeLight;->setLength(F)V

    return-void
.end method

.method private synthetic lambda$setAssistLights$0(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-interface {p1, v0, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;->onAssistLightsUpdated(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;[Lcom/android/systemui/assist/ui/EdgeLight;)V

    return-void
.end method

.method private synthetic lambda$setAssistLights$1([Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/assist/ui/EdgeLight;->copy([Lcom/android/systemui/assist/ui/EdgeLight;)[Lcom/android/systemui/assist/ui/EdgeLight;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mListeners:Ljava/util/Set;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private renderLight(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/assist/ui/EdgeLight;->getStart()F

    move-result v3

    invoke-virtual {p2}, Lcom/android/systemui/assist/ui/EdgeLight;->getLength()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegment(Landroid/graphics/Path;FF)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/android/systemui/assist/ui/EdgeLight;->getColor()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private renderLights(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Lcom/android/systemui/assist/ui/EdgeLight;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private renderLights(Landroid/graphics/Canvas;[Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 3

    array-length v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    array-length v0, p2

    sub-int/2addr v0, v1

    aget-object v0, p2, v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    :cond_1
    array-length v0, p2

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    move v0, v1

    :goto_0
    array-length v2, p2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, p2, v0

    invoke-direct {p0, p1, v2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLight(Landroid/graphics/Canvas;Lcom/android/systemui/assist/ui/EdgeLight;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateRotation()V
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


# virtual methods
.method protected addListener(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commitModeTransition(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mPerimeterPathGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->start(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mListeners:Ljava/util/Set;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    sget-object v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda3;->INSTANCE:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda3;

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getAssistInvocationLights()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/assist/ui/EdgeLight;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    return-object p0
.end method

.method public getAssistLights()[Lcom/android/systemui/assist/ui/EdgeLight;
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

.method public getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    return-object p0
.end method

.method public onAudioLevelUpdate(FF)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onAudioLevelUpdate(FF)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->updateRotation()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mMode:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    invoke-interface {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->onConfigurationChanged()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mScreenLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mScreenLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistLights:[Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLights(Landroid/graphics/Canvas;[Lcom/android/systemui/assist/ui/EdgeLight;)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->mAssistInvocationLights:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->renderLights(Landroid/graphics/Canvas;Ljava/util/List;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->updateRotation()V

    return-void
.end method

.method public setAssistLights([Lcom/android/systemui/assist/ui/EdgeLight;)V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;[Lcom/android/systemui/assist/ui/EdgeLight;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/16 p1, 0x8

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView;->updateRotation()V

    :cond_0
    return-void
.end method
