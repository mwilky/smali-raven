.class public Lcom/android/keyguard/clock/ClockLayout;
.super Landroid/widget/FrameLayout;
.source "ClockLayout.java"


# instance fields
.field public mAnalogClock:Landroid/view/View;

.field public mBurnInPreventionOffsetX:I

.field public mBurnInPreventionOffsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/ClockLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    mul-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lkotlinx/atomicfu/AtomicFU;->getBurnInOffset(IZ)I

    move-result p1

    iget p2, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetX:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/4 p2, 0x0

    invoke-static {p2, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget p3, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    mul-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lkotlinx/atomicfu/AtomicFU;->getBurnInOffset(IZ)I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcom/android/keyguard/clock/ClockLayout;->mBurnInPreventionOffsetY:I

    int-to-float p4, p4

    const/high16 p5, 0x3f000000    # 0.5f

    mul-float/2addr p4, p5

    sub-float/2addr p3, p4

    invoke-static {p2, p3, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    iget-object p4, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p5

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    invoke-virtual {p4, p1}, Landroid/view/View;->setX(F)V

    iget-object p1, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockLayout;->mAnalogClock:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p4, p0

    int-to-float p0, p4

    mul-float/2addr p0, p5

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr p3, v1

    add-float/2addr p3, p0

    invoke-virtual {p1, p3}, Landroid/view/View;->setY(F)V

    :cond_0
    return-void
.end method
