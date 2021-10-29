.class public Lcom/google/android/systemui/smartspace/DoubleShadowTextView;
.super Landroid/widget/TextView;
.source "DoubleShadowTextView.java"


# instance fields
.field private final mAmbientShadowBlur:F

.field private final mAmbientShadowColor:I

.field private mDrawShadow:Z

.field private final mKeyShadowBlur:F

.field private final mKeyShadowColor:I

.field private final mKeyShadowOffsetX:F

.field private final mKeyShadowOffsetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->updateDrawShadow(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/bcsmartspace/R$dimen;->key_text_shadow_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowBlur:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/bcsmartspace/R$dimen;->key_text_shadow_dx:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowOffsetX:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/bcsmartspace/R$dimen;->key_text_shadow_dy:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowOffsetY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/bcsmartspace/R$color;->key_text_shadow_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/bcsmartspace/R$dimen;->ambient_text_shadow_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mAmbientShadowBlur:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/bcsmartspace/R$color;->ambient_text_shadow_color:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mAmbientShadowColor:I

    return-void
.end method

.method private updateDrawShadow(I)V
    .locals 4

    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mDrawShadow:Z

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mDrawShadow:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mAmbientShadowBlur:F

    iget v2, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mAmbientShadowColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowBlur:F

    iget v2, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowOffsetX:F

    iget v3, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowOffsetY:F

    iget v4, p0, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->mKeyShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/DoubleShadowTextView;->updateDrawShadow(I)V

    return-void
.end method
