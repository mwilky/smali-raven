.class public final Lcom/android/keyguard/TextInterpolator;
.super Ljava/lang/Object;
.source "TextInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/TextInterpolator$FontRun;,
        Lcom/android/keyguard/TextInterpolator$Run;,
        Lcom/android/keyguard/TextInterpolator$Line;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextInterpolator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInterpolator.kt\ncom/android/keyguard/TextInterpolator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,445:1\n1849#2:446\n1849#2:447\n1849#2,2:448\n1850#2:450\n1850#2:451\n1858#2,2:452\n1849#2:454\n1849#2,2:455\n1850#2:457\n1860#2:458\n3290#2,5:459\n3290#2,7:464\n3296#2:471\n3290#2,5:472\n3290#2,5:477\n1849#2,2:482\n3296#2:484\n3296#2:485\n*S KotlinDebug\n*F\n+ 1 TextInterpolator.kt\ncom/android/keyguard/TextInterpolator\n*L\n213#1:446\n214#1:447\n219#1:448,2\n214#1:450\n213#1:451\n235#1:452,2\n236#1:454\n243#1:455,2\n236#1:457\n235#1:458\n263#1:459,5\n264#1:464,7\n263#1:471\n362#1:472,5\n363#1:477,5\n368#1:482,2\n363#1:484\n362#1:485\n*E\n"
.end annotation


# instance fields
.field public final basePaint:Landroid/text/TextPaint;

.field public final fontInterpolator:Lcom/android/keyguard/FontInterpolator;

.field public layout:Landroid/text/Layout;

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/TextInterpolator$Line;",
            ">;"
        }
    .end annotation
.end field

.field public progress:F

.field public final targetPaint:Landroid/text/TextPaint;

.field public final tmpDrawPaint:Landroid/text/TextPaint;

.field public tmpPositionArray:[F


# direct methods
.method public constructor <init>(Landroid/text/Layout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    new-instance v0, Lcom/android/keyguard/FontInterpolator;

    invoke-direct {v0}, Lcom/android/keyguard/FontInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/TextInterpolator;->fontInterpolator:Lcom/android/keyguard/FontInterpolator;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/TextInterpolator;->tmpDrawPaint:Landroid/text/TextPaint;

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    iput-object p1, p0, Lcom/android/keyguard/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    return-void
.end method

.method public static lerp(Landroid/text/TextPaint;Landroid/text/TextPaint;FLandroid/text/TextPaint;)V
    .locals 2

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public static shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    sub-int v6, v2, v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/text/Layout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    new-instance v9, Lcom/android/keyguard/TextInterpolator$shapeText$3;

    invoke-direct {v9, v2}, Lcom/android/keyguard/TextInterpolator$shapeText$3;-><init>(Ljava/util/ArrayList;)V

    move-object v8, p1

    invoke-static/range {v4 .. v9}, Landroid/text/TextShaper;->shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final drawFontRun(Landroid/graphics/Canvas;Lcom/android/keyguard/TextInterpolator$Run;Lcom/android/keyguard/TextInterpolator$FontRun;Landroid/text/TextPaint;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v2, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    iget v4, v2, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    add-int/lit8 v6, v3, 0x1

    iget-object v7, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v8, v5, 0x1

    iget-object v9, v1, Lcom/android/keyguard/TextInterpolator$Run;->baseX:[F

    aget v9, v9, v3

    iget-object v10, v1, Lcom/android/keyguard/TextInterpolator$Run;->targetX:[F

    aget v10, v10, v3

    iget v11, v0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    aput v9, v7, v5

    iget-object v5, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v7, v8, 0x1

    iget-object v9, v1, Lcom/android/keyguard/TextInterpolator$Run;->baseY:[F

    aget v9, v9, v3

    iget-object v10, v1, Lcom/android/keyguard/TextInterpolator$Run;->targetY:[F

    aget v3, v10, v3

    iget v10, v0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-static {v9, v3, v10}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    aput v3, v5, v8

    move v3, v6

    move v5, v7

    goto :goto_0

    :cond_0
    iget-object v10, v1, Lcom/android/keyguard/TextInterpolator$Run;->glyphIds:[I

    iget v11, v2, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    iget-object v12, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    const/4 v13, 0x0

    iget v1, v2, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    sub-int v14, v1, v11

    iget-object v1, v0, Lcom/android/keyguard/TextInterpolator;->fontInterpolator:Lcom/android/keyguard/FontInterpolator;

    iget-object v3, v2, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    iget-object v2, v2, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    iget v0, v0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/keyguard/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    move-result-object v15

    move-object/from16 v9, p1

    move-object/from16 v16, p4

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final rebase()V
    .locals 12

    iget v0, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Lcom/android/keyguard/TextInterpolator;->tmpDrawPaint:Landroid/text/TextPaint;

    invoke-static {v2, v3, v0, v5}, Lcom/android/keyguard/TextInterpolator;->lerp(Landroid/text/TextPaint;Landroid/text/TextPaint;FLandroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/android/keyguard/TextInterpolator;->tmpDrawPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/TextInterpolator$Line;

    iget-object v2, v2, Lcom/android/keyguard/TextInterpolator$Line;->runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/TextInterpolator$Run;

    iget-object v5, v3, Lcom/android/keyguard/TextInterpolator$Run;->baseX:[F

    array-length v5, v5

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_6

    add-int/lit8 v7, v6, 0x1

    iget-object v8, v3, Lcom/android/keyguard/TextInterpolator$Run;->baseX:[F

    aget v9, v8, v6

    iget-object v10, v3, Lcom/android/keyguard/TextInterpolator$Run;->targetX:[F

    aget v10, v10, v6

    iget v11, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    aput v9, v8, v6

    iget-object v8, v3, Lcom/android/keyguard/TextInterpolator$Run;->baseY:[F

    aget v9, v8, v6

    iget-object v10, v3, Lcom/android/keyguard/TextInterpolator$Run;->targetY:[F

    aget v10, v10, v6

    iget v11, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    aput v9, v8, v6

    move v6, v7

    goto :goto_3

    :cond_6
    iget-object v3, v3, Lcom/android/keyguard/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/TextInterpolator$FontRun;

    iget-object v6, p0, Lcom/android/keyguard/TextInterpolator;->fontInterpolator:Lcom/android/keyguard/FontInterpolator;

    iget-object v7, v5, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    iget-object v8, v5, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    iget v9, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/keyguard/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    move-result-object v6

    iput-object v6, v5, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    goto :goto_4

    :cond_7
    iput v1, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    return-void
.end method

.method public final shapeText(Landroid/text/Layout;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    invoke-static {v1, v2}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, v0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_18

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/text/PositionedGlyphs;

    check-cast v6, Landroid/graphics/text/PositionedGlyphs;

    invoke-virtual {v6}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v12

    if-ne v8, v12, :cond_1

    const/4 v8, 0x1

    goto :goto_3

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_14

    invoke-virtual {v6}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v8

    new-array v13, v8, [I

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v8, :cond_4

    invoke-virtual {v6, v12}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v14

    invoke-virtual {v7, v12}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v15

    if-ne v14, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_5

    :cond_2
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_3

    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    const-string v0, "Inconsistent glyph ID at "

    const-string v1, " in line "

    invoke-static {v0, v12, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-array v14, v8, [F

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v8, :cond_5

    invoke-virtual {v6, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v12

    aput v12, v14, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    new-array v15, v8, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v8, :cond_6

    invoke-virtual {v6, v2}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v12

    aput v12, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    new-array v2, v8, [F

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v8, :cond_7

    invoke-virtual {v7, v12}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v16

    aput v16, v2, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    new-array v12, v8, [F

    const/16 v16, 0x0

    move/from16 v0, v16

    :goto_9
    if-ge v0, v8, :cond_8

    invoke-virtual {v7, v0}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v16

    aput v16, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v8, :cond_13

    move/from16 p1, v1

    const/4 v1, 0x0

    move-object/from16 v19, v3

    invoke-virtual {v6, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v3

    invoke-virtual {v7, v1}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    move-object/from16 v20, v4

    invoke-virtual {v3}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v4

    move-object/from16 v21, v9

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v9

    if-ne v4, v9, :cond_9

    invoke-virtual {v3}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v9

    if-ne v4, v9, :cond_9

    const/4 v4, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    :goto_a
    const-string v9, " vs "

    move-object/from16 v22, v10

    const-string v10, " ("

    move-object/from16 v16, v12

    const-string v12, "Cannot interpolate font at "

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    const/16 v17, 0x1

    move-object/from16 v23, v5

    move-object/from16 v24, v11

    move/from16 v11, v17

    move v5, v4

    move-object v4, v3

    move/from16 v3, p1

    :goto_b
    if-ge v11, v8, :cond_11

    add-int/lit8 v17, v11, 0x1

    move-object/from16 v18, v2

    invoke-virtual {v6, v11}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v2

    move-object/from16 v25, v6

    invoke-virtual {v7, v11}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v6

    if-eq v4, v2, :cond_e

    if-eq v1, v6, :cond_a

    const/16 v26, 0x1

    goto :goto_c

    :cond_a
    const/16 v26, 0x0

    :goto_c
    if-eqz v26, :cond_d

    move-object/from16 v26, v7

    new-instance v7, Lcom/android/keyguard/TextInterpolator$FontRun;

    invoke-direct {v7, v5, v11, v4, v1}, Lcom/android/keyguard/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int v1, v11, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v4

    if-ne v3, v4, :cond_b

    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_b

    const/4 v3, 0x1

    goto :goto_d

    :cond_b
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_c

    move v3, v1

    move-object v4, v2

    move-object v1, v6

    move v5, v11

    goto :goto_f

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const-string v0, "Base font has changed at "

    const-string v1, " but target font has not changed."

    invoke-static {v0, v11, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object/from16 v26, v7

    if-ne v1, v6, :cond_f

    const/4 v2, 0x1

    goto :goto_e

    :cond_f
    const/4 v2, 0x0

    :goto_e
    if-eqz v2, :cond_10

    :goto_f
    move/from16 v11, v17

    move-object/from16 v2, v18

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    goto/16 :goto_b

    :cond_10
    const-string v0, "Base font has not changed at "

    const-string v1, " but target font has changed."

    invoke-static {v0, v11, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 v18, v2

    new-instance v2, Lcom/android/keyguard/TextInterpolator$FontRun;

    invoke-direct {v2, v5, v8, v4, v1}, Lcom/android/keyguard/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v8, v5

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_10

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    move/from16 p1, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v24, v11

    move-object/from16 v16, v12

    :goto_10
    new-instance v2, Lcom/android/keyguard/TextInterpolator$Run;

    move-object/from16 v3, v16

    move-object v12, v2

    move-object/from16 v16, v18

    move-object/from16 v17, v3

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lcom/android/keyguard/TextInterpolator$Run;-><init>([I[F[F[F[FLjava/util/ArrayList;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object v11, v0

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v5, v23

    move-object v0, v2

    goto/16 :goto_2

    :cond_14
    iget-object v0, v2, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Inconsistent glyph count at line "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move/from16 p1, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v23, v5

    move-object v0, v11

    new-instance v1, Lcom/android/keyguard/TextInterpolator$Line;

    invoke-direct {v1, v0}, Lcom/android/keyguard/TextInterpolator$Line;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xa

    move/from16 v1, p1

    move-object v5, v0

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_16
    move-object v0, v5

    iput-object v0, v2, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    iget-object v0, v2, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    array-length v0, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_17

    new-array v0, v1, [F

    iput-object v0, v2, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    :cond_17
    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new layout result has different line count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
