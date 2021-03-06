.class Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;
.super Landroid/widget/TextView;
.source "KeyguardSliceView.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyguardSliceTextView"
.end annotation


# static fields
.field private static sStyleId:I


# instance fields
.field private mLockScreenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/R$style;->TextAppearance_Keyguard_Secondary:I

    sput v0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->sStyleId:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->sStyleId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->mLockScreenMode:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->onDensityOrFontScaleChanged()V

    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method private updateDrawableColors()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePadding()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->widget_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->mLockScreenMode:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-virtual {p0, v4, v2, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_1
    mul-int/2addr v1, v2

    invoke-virtual {p0, v2, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_2
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->widget_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void
.end method


# virtual methods
.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->updatePadding()V

    return-void
.end method

.method public onOverlayChanged()V
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->sStyleId:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->updateDrawableColors()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->updatePadding()V

    return-void
.end method

.method public setLockScreenMode(I)V
    .locals 1

    iput p1, p0, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->mLockScreenMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->updatePadding()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->updatePadding()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSliceView$KeyguardSliceTextView;->updateDrawableColors()V

    return-void
.end method
