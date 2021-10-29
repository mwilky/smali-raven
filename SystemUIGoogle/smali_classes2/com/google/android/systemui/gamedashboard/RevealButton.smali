.class public Lcom/google/android/systemui/gamedashboard/RevealButton;
.super Landroid/view/View;
.source "RevealButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field public static final BACKGROUND_HEIGHT:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/google/android/systemui/gamedashboard/RevealButton;",
            ">;"
        }
    .end annotation
.end field

.field public static final BACKGROUND_WIDTH:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/google/android/systemui/gamedashboard/RevealButton;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_ALPHA:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "Lcom/google/android/systemui/gamedashboard/RevealButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

.field private mIconAlpha:I

.field private mIsRecording:Z

.field private final mLeftArrow:Landroid/graphics/drawable/Drawable;

.field private final mLeftRecordingDot:Landroid/graphics/drawable/Drawable;

.field private final mRightArrow:Landroid/graphics/drawable/Drawable;

.field private final mRightRecordingDot:Landroid/graphics/drawable/Drawable;

.field private mRightSide:Z

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$PLizT1-tv1L203jH4W9Zh1hKQJY(Lcom/google/android/systemui/gamedashboard/RevealButton;ILandroid/graphics/Rect;ILandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/gamedashboard/RevealButton;->lambda$bounce$0(ILandroid/graphics/Rect;ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/gamedashboard/RevealButton$1;

    const-string v1, "backgroundWidth"

    invoke-direct {v0, v1}, Lcom/google/android/systemui/gamedashboard/RevealButton$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_WIDTH:Landroid/util/IntProperty;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/RevealButton$2;

    const-string v1, "backgroundHeight"

    invoke-direct {v0, v1}, Lcom/google/android/systemui/gamedashboard/RevealButton$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_HEIGHT:Landroid/util/IntProperty;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/RevealButton$3;

    const-string v1, "iconAlpha"

    invoke-direct {v0, v1}, Lcom/google/android/systemui/gamedashboard/RevealButton$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/gamedashboard/RevealButton;->ICON_ALPHA:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightSide:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIsRecording:Z

    const/16 v1, 0xff

    iput v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIconAlpha:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$drawable;->ic_wide_arrow_left:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/R$drawable;->ic_wide_arrow_right:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightArrow:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/R$drawable;->ic_recording_dot_left:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mLeftRecordingDot:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/systemui/R$drawable;->ic_recording_dot_right:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightRecordingDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/RevealButton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->setBackgroundWidth(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/RevealButton;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->getBackgroundWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/RevealButton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->setBackgroundHeight(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/systemui/gamedashboard/RevealButton;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->getBackgroundHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/RevealButton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->setIconAlpha(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/systemui/gamedashboard/RevealButton;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->getIconAlpha()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/systemui/gamedashboard/RevealButton;)Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    return-object p0
.end method

.method private drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IIII)V
    .locals 1

    div-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float p3, p5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p6, p4

    int-to-float p4, p6

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIconAlpha:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getBackgroundHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method private getBackgroundWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method private getIconAlpha()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIconAlpha:I

    return p0
.end method

.method private synthetic lambda$bounce$0(ILandroid/graphics/Rect;ILandroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    int-to-float p1, p1

    mul-float/2addr p4, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    sub-float/2addr p1, p4

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p4

    float-to-int p4, v1

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v0

    sub-float/2addr v1, p3

    float-to-int v0, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {p0, p1, v0, p4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private setBackgroundHeight(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private setBackgroundWidth(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private setIconAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIconAlpha:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public bounce(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3fa00000    # 1.25f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f400000    # 0.75f

    :goto_0
    aput p1, v3, v4

    const/4 p1, 0x2

    aput v5, v3, p1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/google/android/systemui/gamedashboard/RevealButton$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/RevealButton;ILandroid/graphics/Rect;I)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/RevealButton$4;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/gamedashboard/RevealButton$4;-><init>(Lcom/google/android/systemui/gamedashboard/RevealButton;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public isOnTheRight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightSide:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightSide:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIsRecording:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mLeftRecordingDot:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mLeftArrow:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v2, v1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/gamedashboard/RevealButton;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IIII)V

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIsRecording:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightRecordingDot:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightArrow:Landroid/graphics/drawable/Drawable;

    :goto_1
    move-object v2, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v3, v4, 0x2

    add-int v6, v1, v3

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/systemui/gamedashboard/RevealButton;->drawDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;IIII)V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mBackground:Lcom/google/android/systemui/gamedashboard/RevealButtonBackground;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public setIsRecording(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mIsRecording:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightSide:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public slideIn()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightSide:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v2, v2, [F

    const/4 v4, 0x0

    int-to-float v0, v0

    aput v0, v2, v4

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/android/systemui/gamedashboard/RevealButton;->mRightSide:Z

    if-eqz v5, :cond_1

    sub-float/2addr v0, v1

    goto :goto_1

    :cond_1
    add-float/2addr v0, v1

    :goto_1
    aput v0, v2, v4

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
