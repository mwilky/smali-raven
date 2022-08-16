.class public final Lcom/android/systemui/media/ColorSchemeTransition;
.super Ljava/lang/Object;
.source "ColorSchemeTransition.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColorSchemeTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColorSchemeTransition.kt\ncom/android/systemui/media/ColorSchemeTransition\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,244:1\n13536#2,2:245\n1#3:247\n*S KotlinDebug\n*F\n+ 1 ColorSchemeTransition.kt\ncom/android/systemui/media/ColorSchemeTransition\n*L\n240#1:245,2\n*E\n"
.end annotation


# instance fields
.field public final accentPrimary:Lcom/android/systemui/media/AnimatingColorTransition;

.field public final bgColor:I

.field public final bgGradientEnd:Lcom/android/systemui/media/AnimatingColorTransition;

.field public final bgGradientStart:Lcom/android/systemui/media/AnimatingColorTransition;

.field public final colorTransitions:[Lcom/android/systemui/media/AnimatingColorTransition;

.field public final context:Landroid/content/Context;

.field public isGradientEnabled:Z

.field public final mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/MediaViewHolder;)V
    .locals 13

    sget-object v0, Lcom/android/systemui/media/ColorSchemeTransition$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/ColorSchemeTransition;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/systemui/media/ColorSchemeTransition;->isGradientEnabled:Z

    const v1, 0x7f0602aa

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/ColorSchemeTransition;->bgColor:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/media/ColorSchemeTransition$surfaceColor$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$surfaceColor$1;

    new-instance v3, Lcom/android/systemui/media/ColorSchemeTransition$surfaceColor$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/ColorSchemeTransition$surfaceColor$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/AnimatingColorTransition;

    const v2, 0x1010036

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/media/ColorSchemeTransition$accentPrimary$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$accentPrimary$1;

    new-instance v5, Lcom/android/systemui/media/ColorSchemeTransition$accentPrimary$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/media/ColorSchemeTransition$accentPrimary$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/AnimatingColorTransition;

    iput-object v3, p0, Lcom/android/systemui/media/ColorSchemeTransition;->accentPrimary:Lcom/android/systemui/media/AnimatingColorTransition;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/media/ColorSchemeTransition$accentSecondary$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$accentSecondary$1;

    new-instance v6, Lcom/android/systemui/media/ColorSchemeTransition$accentSecondary$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/media/ColorSchemeTransition$accentSecondary$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/AnimatingColorTransition;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/media/ColorSchemeTransition$colorSeamless$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/media/ColorSchemeTransition$colorSeamless$1;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    new-instance v7, Lcom/android/systemui/media/ColorSchemeTransition$colorSeamless$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/media/ColorSchemeTransition$colorSeamless$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/media/AnimatingColorTransition;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v6, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$1;

    new-instance v7, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/media/ColorSchemeTransition$textPrimary$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/AnimatingColorTransition;

    const v6, 0x1010039

    invoke-virtual {p0, v6}, Lcom/android/systemui/media/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/media/ColorSchemeTransition$textPrimaryInverse$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$textPrimaryInverse$1;

    new-instance v8, Lcom/android/systemui/media/ColorSchemeTransition$textPrimaryInverse$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/media/ColorSchemeTransition$textPrimaryInverse$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/AnimatingColorTransition;

    const v7, 0x1010038

    invoke-virtual {p0, v7}, Lcom/android/systemui/media/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/media/ColorSchemeTransition$textSecondary$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$textSecondary$1;

    new-instance v9, Lcom/android/systemui/media/ColorSchemeTransition$textSecondary$2;

    invoke-direct {v9, p0}, Lcom/android/systemui/media/ColorSchemeTransition$textSecondary$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/media/AnimatingColorTransition;

    const v8, 0x1010212

    invoke-virtual {p0, v8}, Lcom/android/systemui/media/ColorSchemeTransition;->loadDefaultColor(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$1;

    new-instance v10, Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/media/ColorSchemeTransition$textTertiary$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/media/AnimatingColorTransition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/media/ColorSchemeTransition$bgGradientStart$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$bgGradientStart$1;

    new-instance v11, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;

    const/high16 v12, 0x3e800000    # 0.25f

    invoke-direct {v11, p0, v10, v12}, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V

    new-instance v10, Lcom/android/systemui/media/ColorSchemeTransition$bgGradientStart$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/media/ColorSchemeTransition$bgGradientStart$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, v9, v11, v10}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/media/AnimatingColorTransition;

    iput-object v9, p0, Lcom/android/systemui/media/ColorSchemeTransition;->bgGradientStart:Lcom/android/systemui/media/AnimatingColorTransition;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v10, Lcom/android/systemui/media/ColorSchemeTransition$bgGradientEnd$1;->INSTANCE:Lcom/android/systemui/media/ColorSchemeTransition$bgGradientEnd$1;

    new-instance v11, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;

    const v12, 0x3f666666    # 0.9f

    invoke-direct {v11, p0, v10, v12}, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V

    new-instance v10, Lcom/android/systemui/media/ColorSchemeTransition$bgGradientEnd$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/media/ColorSchemeTransition$bgGradientEnd$2;-><init>(Lcom/android/systemui/media/ColorSchemeTransition;)V

    invoke-virtual {v0, p1, v11, v10}, Lcom/android/systemui/media/ColorSchemeTransition$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/AnimatingColorTransition;

    iput-object p1, p0, Lcom/android/systemui/media/ColorSchemeTransition;->bgGradientEnd:Lcom/android/systemui/media/AnimatingColorTransition;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/systemui/media/AnimatingColorTransition;

    const/4 v10, 0x0

    aput-object v1, v0, v10

    aput-object v5, v0, p2

    const/4 p2, 0x2

    aput-object v3, v0, p2

    const/4 p2, 0x3

    aput-object v4, v0, p2

    const/4 p2, 0x4

    aput-object v2, v0, p2

    const/4 p2, 0x5

    aput-object v6, v0, p2

    const/4 p2, 0x6

    aput-object v7, v0, p2

    const/4 p2, 0x7

    aput-object v8, v0, p2

    const/16 p2, 0x8

    aput-object v9, v0, p2

    const/16 p2, 0x9

    aput-object p1, v0, p2

    iput-object v0, p0, Lcom/android/systemui/media/ColorSchemeTransition;->colorTransitions:[Lcom/android/systemui/media/AnimatingColorTransition;

    return-void
.end method

.method public static final access$updateAlbumGradient(Lcom/android/systemui/media/ColorSchemeTransition;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object v0, v0, Lcom/android/systemui/media/MediaViewHolder;->albumView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/systemui/media/ColorSchemeTransition;->bgGradientStart:Lcom/android/systemui/media/AnimatingColorTransition;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget v2, v2, Lcom/android/systemui/media/AnimatingColorTransition;->currentColor:I

    :goto_1
    aput v2, v1, v3

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/systemui/media/ColorSchemeTransition;->bgGradientEnd:Lcom/android/systemui/media/AnimatingColorTransition;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/android/systemui/media/AnimatingColorTransition;->currentColor:I

    :goto_2
    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final loadDefaultColor(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/ColorSchemeTransition;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method
