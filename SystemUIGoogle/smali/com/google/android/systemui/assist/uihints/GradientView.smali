.class public final Lcom/google/android/systemui/assist/uihints/GradientView;
.super Landroid/view/View;
.source "GradientView.java"


# instance fields
.field public mColors:[I

.field public final mGradientPaint:Landroid/graphics/Paint;

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mStops:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f000000    # 0.5f

    const v1, 0x3f333333    # 0.7f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    const/16 p1, 0x64

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mColors:[I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setDither(Z)V

    new-array p2, p1, [F

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mStops:[F

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object p2, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mStops:[F

    int-to-float v1, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GradientView;->updateGradient()V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mGradientPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/GradientView;->updateGradient()V

    return-void
.end method

.method public final updateGradient()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mColors:[I

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mInterpolator:Landroid/view/animation/PathInterpolator;

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mStops:[F

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v3

    invoke-static {v0, v0, v3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mGradientPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v3, v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mColors:[I

    iget-object v7, p0, Lcom/google/android/systemui/assist/uihints/GradientView;->mStops:[F

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
