.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;
.super Landroid/widget/FrameLayout;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;,
        Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$TapListener;
    }
.end annotation


# static fields
.field private static final HIGHLIGHT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final HIGHLIGHT_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field private static final PATH_CHANGE_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessibilityDelegate:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private backgroundCornerRadius:F

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private currentSelectionPath:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final highlightCornerRadius:F

.field private final highlightPaint:Landroid/graphics/Paint;

.field private highlightProgress:F

.field private final highlights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$TapListener;",
            ">;"
        }
    .end annotation
.end field

.field private pathChangeProgress:F

.field private previousSelectionPath:Landroid/graphics/Path;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final selectionPaint:Landroid/graphics/Paint;

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$1;

    const-string v1, "highlightProgress"

    invoke-direct {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->HIGHLIGHT_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$2;

    const-string v1, "pathChangeProgress"

    invoke-direct {v0, v1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->PATH_CHANGE_PROGRESS:Landroid/util/FloatProperty;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f35c28f    # 0.71f

    const/4 v2, 0x0

    const v3, 0x3e051eb8    # 0.13f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->HIGHLIGHT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlights:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->listeners:Ljava/util/List;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->tmpRectF:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->tmpRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightProgress:F

    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->pathChangeProgress:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->backgroundPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1d

    if-lt p3, p4, :cond_0

    sget v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$color;->default_gleam_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$dimen;->selection_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightCornerRadius:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->selectionPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightPaint:Landroid/graphics/Paint;

    if-lt p3, p4, :cond_1

    sget p3, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/R$color;->default_gleam_highlight_color:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/BlendMode;->PLUS:Landroid/graphics/BlendMode;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->setPathChangeProgress(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->getPathChangeProgress()F

    move-result p0

    return p0
.end method

.method private getPathChangeProgress()F
    .locals 0

    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->pathChangeProgress:F

    return p0
.end method

.method private handleTap(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$TapListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$TapListener;->onTap(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static saturate(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "amount"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0
.end method

.method private setPathChangeProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->pathChangeProgress:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->accessibilityDelegate:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->accessibilityDelegate:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getHighlightProgress()F
    .locals 0

    iget p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightProgress:F

    return p0
.end method

.method public synthetic lambda$onAttachedToWindow$0$HighlightView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->handleTap(FF)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->tmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->tmpRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->backgroundCornerRadius:F

    iget-object v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightProgress:F

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v4, 0x437f0000    # 255.0f

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    sub-float v3, v0, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->saturate(F)F

    move-result v3

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlights:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightCornerRadius:F

    iget-object v5, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->previousSelectionPath:Landroid/graphics/Path;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->selectionPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->pathChangeProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->previousSelectionPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->currentSelectionPath:Landroid/graphics/Path;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->selectionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->pathChangeProgress:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->currentSelectionPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->selectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "gainFocus",
            "direction",
            "previouslyFocusedRect"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->accessibilityDelegate:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView$HighlightAccessibilityDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setHighlightProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "foregroundProgress"
        }
    .end annotation

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/HighlightView;->highlightProgress:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
