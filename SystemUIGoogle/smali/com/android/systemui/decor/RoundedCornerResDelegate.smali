.class public final Lcom/android/systemui/decor/RoundedCornerResDelegate;
.super Ljava/lang/Object;
.source "RoundedCornerResDelegate.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoundedCornerResDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedCornerResDelegate.kt\ncom/android/systemui/decor/RoundedCornerResDelegate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"
.end annotation


# instance fields
.field public bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public bottomRoundedSize:Landroid/util/Size;

.field public colorTintList:Landroid/content/res/ColorStateList;

.field public displayUniqueId:Ljava/lang/String;

.field public hasBottom:Z

.field public hasTop:Z

.field public physicalPixelDisplaySizeRatio:F

.field public reloadToken:I

.field public final res:Landroid/content/res/Resources;

.field public topRoundedDrawable:Landroid/graphics/drawable/Drawable;

.field public topRoundedSize:Landroid/util/Size;

.field public tuningSizeFactor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    new-instance p1, Landroid/util/Size;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    const/high16 p1, -0x1000000

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->colorTintList:Landroid/content/res/ColorStateList;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadRes()V

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string p2, "RoundedCornerResDelegate state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    const-string v0, "  hasTop="

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(ZLjava/lang/String;Ljava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "  hasBottom="

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  topRoundedSize(w,h)=("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  bottomRoundedSize(w,h)=("

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p2, "  physicalPixelDisplaySizeRatio="

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method

.method public final reloadMeasures()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->tuningSizeFactor:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gtz v0, :cond_3

    return-void

    :cond_3
    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_7

    new-instance v0, Landroid/util/Size;

    iget v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedSize:Landroid/util/Size;

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/util/Size;

    iget v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    float-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->physicalPixelDisplaySizeRatio:F

    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedSize:Landroid/util/Size;

    :cond_8
    return-void
.end method

.method public final reloadRes()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasTop:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->res:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :cond_4
    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->hasBottom:Z

    const v1, 0x7f03003f

    const v2, 0x7f0807d4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f03003d

    const v2, 0x7f0807d2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final updateDisplayUniqueId(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->displayUniqueId:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadToken:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadRes()V

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadToken:I

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    iput p1, p0, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadToken:I

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadRes()V

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->reloadMeasures()V

    :goto_1
    return-void
.end method
