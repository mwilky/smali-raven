.class public final Lcom/android/settings/accessibility/PaletteListPreference;
.super Landroidx/preference/Preference;
.source "PaletteListPreference.java"


# instance fields
.field private final mGradientColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mGradientOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/accessibility/PaletteListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    const p1, 0x7f0600b1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private createGradientDrawable(Landroid/view/ViewGroup;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    invoke-static {p0}, Lcom/google/common/primitives/Floats;->toArray(Ljava/util/Collection;)[F

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    return-object p2
.end method

.method private getPaletteColors(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0100b4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getPaletteData(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0100b5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getTextLineHeight(Landroid/content/Context;)I
    .locals 0

    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p1, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private getTextWidth(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    new-instance p0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private initPaletteAttributes(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0a0195

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientColors:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private initPaletteView(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 8

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PaletteListPreference;->getPaletteColors(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PaletteListPreference;->getPaletteData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Lcom/android/settings/accessibility/PaletteListPreference$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/settings/accessibility/PaletteListPreference$$ExternalSyntheticLambda0;

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/android/settings/accessibility/PaletteListPreference;->getTextWidth(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getScreenWidthPixels(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/PaletteListPreference;->mGradientOffsets:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityUtil;->getScreenHeightPixels(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    new-array v4, v4, [I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v3, v6

    const/4 v6, 0x0

    aput v3, v4, v6

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PaletteListPreference;->getTextLineHeight(Landroid/content/Context;)I

    move-result v3

    aput v3, v4, v5

    invoke-static {v4}, Lcom/google/common/primitives/Ints;->max([I)I

    move-result v3

    move v4, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setHeight(I)V

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7, v6, v6, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/16 v7, 0x10

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setGravity(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, p2, v7}, Lcom/android/settings/accessibility/PaletteListPreference;->createGradientDrawable(Landroid/view/ViewGroup;I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0d0409

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/PaletteListPreference;->initPaletteAttributes(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/accessibility/PaletteListPreference;->initPaletteView(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method
