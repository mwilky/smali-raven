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
    value = "SMAP\nTextInterpolator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInterpolator.kt\ncom/android/keyguard/TextInterpolator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,445:1\n1819#2:446\n1819#2:447\n1819#2,2:448\n1820#2:450\n1820#2:451\n1828#2,2:452\n1819#2:454\n1819#2,2:455\n1820#2:457\n1830#2:458\n3267#2,5:459\n3267#2,7:464\n3273#2:471\n3267#2,5:472\n3267#2,5:477\n1819#2,2:482\n3273#2:484\n3273#2:485\n*E\n*S KotlinDebug\n*F\n+ 1 TextInterpolator.kt\ncom/android/keyguard/TextInterpolator\n*L\n213#1:446\n214#1:447\n219#1,2:448\n214#1:450\n213#1:451\n235#1,2:452\n236#1:454\n243#1,2:455\n236#1:457\n235#1:458\n263#1,5:459\n264#1,7:464\n263#1:471\n362#1,5:472\n363#1,5:477\n368#1,2:482\n363#1:484\n362#1:485\n*E\n"
.end annotation


# instance fields
.field private final basePaint:Landroid/text/TextPaint;

.field private final fontInterpolator:Lcom/android/keyguard/FontInterpolator;

.field private layout:Landroid/text/Layout;

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/TextInterpolator$Line;",
            ">;"
        }
    .end annotation
.end field

.field private progress:F

.field private final targetPaint:Landroid/text/TextPaint;

.field private final tmpDrawPaint:Landroid/text/TextPaint;

.field private tmpPositionArray:[F


# direct methods
.method public constructor <init>(Landroid/text/Layout;)V
    .locals 2

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

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

    invoke-direct {p0, p1}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    return-void
.end method

.method private final drawFontRun(Landroid/graphics/Canvas;Lcom/android/keyguard/TextInterpolator$Run;Lcom/android/keyguard/TextInterpolator$FontRun;Landroid/graphics/Paint;)V
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/android/keyguard/TextInterpolator$FontRun;->getStart()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/android/keyguard/TextInterpolator$FontRun;->getEnd()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, 0x1

    iget-object v5, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v6, v3, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseX()[F

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/keyguard/TextInterpolator$Run;->getTargetX()[F

    move-result-object v8

    aget v8, v8, v1

    iget v9, v0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-static {v7, v8, v9}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v7

    aput v7, v5, v3

    iget-object v3, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    add-int/lit8 v5, v6, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseY()[F

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual/range {p2 .. p2}, Lcom/android/keyguard/TextInterpolator$Run;->getTargetY()[F

    move-result-object v8

    aget v1, v8, v1

    iget v8, v0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-static {v7, v1, v8}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    aput v1, v3, v6

    if-lt v4, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v4

    move v3, v5

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/keyguard/TextInterpolator$Run;->getGlyphIds()[I

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/keyguard/TextInterpolator$FontRun;->getStart()I

    move-result v9

    iget-object v10, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/keyguard/TextInterpolator$FontRun;->getLength()I

    move-result v12

    iget-object v1, v0, Lcom/android/keyguard/TextInterpolator;->fontInterpolator:Lcom/android/keyguard/FontInterpolator;

    invoke-virtual/range {p3 .. p3}, Lcom/android/keyguard/TextInterpolator$FontRun;->getBaseFont()Landroid/graphics/fonts/Font;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/keyguard/TextInterpolator$FontRun;->getTargetFont()Landroid/graphics/fonts/Font;

    move-result-object v3

    iget v0, v0, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/keyguard/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    move-result-object v13

    move-object/from16 v7, p1

    move-object/from16 v14, p4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Canvas;->drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    invoke-static {p0, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-virtual {p4, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-static {p0, p1, p3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p0

    invoke-virtual {p4, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "Landroid/text/TextPaint;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/graphics/text/PositionedGlyphs;",
            ">;>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    sub-int v5, v1, v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Landroid/text/Layout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    new-instance v8, Lcom/android/keyguard/TextInterpolator$shapeText$3;

    invoke-direct {v8, v1}, Lcom/android/keyguard/TextInterpolator$shapeText$3;-><init>(Ljava/util/List;)V

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Landroid/text/TextShaper;->shapeText(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;Landroid/text/TextShaper$GlyphsConsumer;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-lt v2, v0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method private final shapeText(Landroid/text/Layout;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v9, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/text/PositionedGlyphs;

    check-cast v2, Landroid/graphics/text/PositionedGlyphs;

    invoke-virtual {v2}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v14

    if-ne v13, v14, :cond_1

    const/4 v13, 0x1

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    :goto_3
    if-eqz v13, :cond_13

    invoke-virtual {v2}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v13

    new-array v15, v13, [I

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_4

    invoke-virtual {v2, v14}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v8

    invoke-virtual {v9, v14}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v5

    if-ne v8, v5, :cond_2

    const/4 v5, 0x1

    goto :goto_5

    :cond_2
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_3

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    aput v8, v15, v14

    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0xa

    goto :goto_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent glyph ID at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-array v5, v13, [F

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v13, :cond_5

    invoke-virtual {v2, v8}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v14

    aput v14, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    new-array v8, v13, [F

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_6

    invoke-virtual {v2, v14}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v16

    aput v16, v8, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_6
    new-array v14, v13, [F

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v13, :cond_7

    invoke-virtual {v9, v6}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v16

    aput v16, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_7
    new-array v6, v13, [F

    move/from16 v16, v1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v13, :cond_8

    invoke-virtual {v9, v1}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v17

    aput v17, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    if-eqz v13, :cond_12

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    move-object/from16 v23, v10

    invoke-virtual {v9, v3}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v10

    sget-object v3, Lcom/android/keyguard/FontInterpolator;->Companion:Lcom/android/keyguard/FontInterpolator$Companion;

    move-object/from16 v24, v11

    const-string v11, "baseFont"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v14

    const-string v14, "targetFont"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v10}, Lcom/android/keyguard/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v3

    move-object/from16 v25, v7

    const-string v7, " vs "

    const-string v0, " ("

    move-object/from16 v26, v12

    const-string v12, "Cannot interpolate font at "

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    if-ge v3, v13, :cond_10

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    move-object v6, v10

    const/4 v10, 0x0

    move v8, v3

    move-object v3, v4

    move/from16 v4, v16

    :goto_a
    move-object/from16 v27, v5

    add-int/lit8 v5, v8, 0x1

    move-object/from16 v28, v15

    invoke-virtual {v2, v8}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v15

    move-object/from16 v29, v2

    invoke-virtual {v9, v8}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v2

    if-eq v3, v15, :cond_c

    if-eq v6, v2, :cond_9

    const/16 v16, 0x1

    goto :goto_b

    :cond_9
    const/16 v16, 0x0

    :goto_b
    if-eqz v16, :cond_b

    move-object/from16 v30, v9

    new-instance v9, Lcom/android/keyguard/TextInterpolator$FontRun;

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v10, v8, v3, v6}, Lcom/android/keyguard/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int v3, v8, v10

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Lcom/android/keyguard/FontInterpolator;->Companion:Lcom/android/keyguard/FontInterpolator$Companion;

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v15, v2}, Lcom/android/keyguard/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v6, v2

    move v4, v3

    move v10, v8

    move-object v3, v15

    goto :goto_d

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Base font has changed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but target font has not changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object/from16 v30, v9

    if-ne v6, v2, :cond_d

    const/4 v2, 0x1

    goto :goto_c

    :cond_d
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_f

    :goto_d
    if-lt v5, v13, :cond_e

    move-object v0, v3

    move v3, v10

    move-object v10, v6

    goto :goto_e

    :cond_e
    move v8, v5

    move-object/from16 v5, v27

    move-object/from16 v15, v28

    move-object/from16 v2, v29

    move-object/from16 v9, v30

    goto/16 :goto_a

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Base font has not changed at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but target font has changed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-object/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v8

    move-object/from16 v28, v15

    move-object v0, v4

    move/from16 v4, v16

    const/4 v3, 0x0

    :goto_e
    new-instance v2, Lcom/android/keyguard/TextInterpolator$FontRun;

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v13, v0, v10}, Lcom/android/keyguard/TextInterpolator$FontRun;-><init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v13, v3

    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x0

    goto :goto_f

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move-object/from16 v27, v5

    move-object/from16 v19, v6

    move-object/from16 v25, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v26, v12

    move-object/from16 v17, v14

    move-object/from16 v28, v15

    const/4 v2, 0x0

    move/from16 v0, v16

    :goto_f
    new-instance v3, Lcom/android/keyguard/TextInterpolator$Run;

    move-object/from16 v4, v17

    move-object v14, v3

    move-object/from16 v15, v28

    move-object/from16 v16, v27

    move-object/from16 v17, v20

    move-object/from16 v18, v4

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v20}, Lcom/android/keyguard/TextInterpolator$Run;-><init>([I[F[F[F[FLjava/util/List;)V

    move-object/from16 v1, v26

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0xa

    move-object v12, v1

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v7, v25

    move v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_13
    iget-object v0, v0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Inconsistent glyph count at line "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move/from16 v16, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v25, v7

    move-object v1, v12

    const/4 v2, 0x0

    new-instance v3, Lcom/android/keyguard/TextInterpolator$Line;

    invoke-direct {v3, v1}, Lcom/android/keyguard/TextInterpolator$Line;-><init>(Ljava/util/List;)V

    move-object/from16 v4, v25

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    move/from16 v1, v16

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    const/16 v8, 0xa

    goto/16 :goto_1

    :cond_15
    move-object v4, v7

    iput-object v4, v0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    iget-object v2, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    array-length v2, v2

    mul-int/lit8 v1, v1, 0x2

    if-ge v2, v1, :cond_16

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/android/keyguard/TextInterpolator;->tmpPositionArray:[F

    :cond_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new layout result has different line count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final updatePositionsAndFonts(Ljava/util/List;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Landroid/graphics/text/PositionedGlyphs;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    check-cast v0, Lcom/android/keyguard/TextInterpolator$Line;

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Line;->getRuns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/text/PositionedGlyphs;

    check-cast v0, Lcom/android/keyguard/TextInterpolator$Run;

    invoke-virtual {v7}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v11

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getGlyphIds()[I

    move-result-object v12

    array-length v12, v12

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_f

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getFontRuns()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/keyguard/TextInterpolator$FontRun;

    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getStart()I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getStart()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getEnd()I

    move-result v15

    if-ge v14, v15, :cond_7

    :goto_5
    add-int/lit8 v3, v14, 0x1

    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getStart()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v4

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getGlyphIds()[I

    move-result-object v16

    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getStart()I

    move-result v17

    aget v6, v16, v17

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_6

    :cond_2
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_6

    invoke-virtual {v7, v14}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    if-ne v13, v4, :cond_3

    const/4 v4, 0x1

    goto :goto_7

    :cond_3
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_5

    if-lt v3, v15, :cond_4

    goto :goto_8

    :cond_4
    move v14, v3

    const/16 v6, 0xa

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The new layout has different font run. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getStart()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "The new layout has different glyph ID at "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_8
    sget-object v3, Lcom/android/keyguard/FontInterpolator;->Companion:Lcom/android/keyguard/FontInterpolator$Companion;

    const-string v4, "newFont"

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getBaseFont()Landroid/graphics/fonts/Font;

    move-result-object v4

    invoke-virtual {v3, v13, v4}, Lcom/android/keyguard/FontInterpolator$Companion;->canInterpolate(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {v12, v13}, Lcom/android/keyguard/TextInterpolator$FontRun;->setBaseFont(Landroid/graphics/fonts/Font;)V

    goto :goto_9

    :cond_8
    invoke-virtual {v12, v13}, Lcom/android/keyguard/TextInterpolator$FontRun;->setTargetFont(Landroid/graphics/fonts/Font;)V

    :goto_9
    const/16 v6, 0xa

    goto/16 :goto_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New font cannot be interpolated with existing font. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/keyguard/TextInterpolator$FontRun;->getBaseFont()Landroid/graphics/fonts/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-eqz p2, :cond_c

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseX()[F

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_e

    const/4 v4, 0x0

    :goto_a
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseX()[F

    move-result-object v11

    invoke-virtual {v7, v4}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v12

    aput v12, v11, v4

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseY()[F

    move-result-object v11

    invoke-virtual {v7, v4}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v12

    aput v12, v11, v4

    if-le v6, v3, :cond_b

    goto :goto_c

    :cond_b
    move v4, v6

    goto :goto_a

    :cond_c
    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseX()[F

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_e

    const/4 v4, 0x0

    :goto_b
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getTargetX()[F

    move-result-object v11

    invoke-virtual {v7, v4}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v12

    aput v12, v11, v4

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator$Run;->getTargetY()[F

    move-result-object v11

    invoke-virtual {v7, v4}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v12

    aput v12, v11, v4

    if-le v6, v3, :cond_d

    goto :goto_c

    :cond_d
    move v4, v6

    goto :goto_b

    :cond_e
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xa

    goto/16 :goto_2

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new layout has different glyph count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xa

    goto/16 :goto_1

    :cond_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The new layout result has different line count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    iget-object v3, p0, Lcom/android/keyguard/TextInterpolator;->tmpDrawPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/TextInterpolator;->lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/android/keyguard/TextInterpolator$Line;

    invoke-virtual {v2}, Lcom/android/keyguard/TextInterpolator$Line;->getRuns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/TextInterpolator$Run;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/keyguard/TextInterpolatorKt;->access$getDrawOrigin(Landroid/text/Layout;I)F

    move-result v5

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4}, Lcom/android/keyguard/TextInterpolator$Run;->getFontRuns()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/TextInterpolator$FontRun;

    iget-object v7, p0, Lcom/android/keyguard/TextInterpolator;->tmpDrawPaint:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v4, v6, v7}, Lcom/android/keyguard/TextInterpolator;->drawFontRun(Landroid/graphics/Canvas;Lcom/android/keyguard/TextInterpolator$Run;Lcom/android/keyguard/TextInterpolator$FontRun;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw p0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator;->layout:Landroid/text/Layout;

    return-object p0
.end method

.method public final getProgress()F
    .locals 0

    iget p0, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    return p0
.end method

.method public final getTargetPaint()Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public final onTargetPaintModified()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/TextInterpolator;->updatePositionsAndFonts(Ljava/util/List;Z)V

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

    invoke-direct {p0, v2, v3, v0, v5}, Lcom/android/keyguard/TextInterpolator;->lerp(Landroid/graphics/Paint;Landroid/graphics/Paint;FLandroid/graphics/Paint;)V

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

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/TextInterpolator$Line;

    invoke-virtual {v2}, Lcom/android/keyguard/TextInterpolator$Line;->getRuns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/TextInterpolator$Run;

    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseX()[F

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_7

    move v6, v4

    :goto_3
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseX()[F

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseX()[F

    move-result-object v9

    aget v9, v9, v6

    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getTargetX()[F

    move-result-object v10

    aget v10, v10, v6

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->getProgress()F

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    aput v9, v8, v6

    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseY()[F

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getBaseY()[F

    move-result-object v9

    aget v9, v9, v6

    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getTargetY()[F

    move-result-object v10

    aget v10, v10, v6

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->getProgress()F

    move-result v11

    invoke-static {v9, v10, v11}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v9

    aput v9, v8, v6

    if-le v7, v5, :cond_6

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_3

    :cond_7
    :goto_4
    invoke-virtual {v3}, Lcom/android/keyguard/TextInterpolator$Run;->getFontRuns()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/TextInterpolator$FontRun;

    iget-object v6, p0, Lcom/android/keyguard/TextInterpolator;->fontInterpolator:Lcom/android/keyguard/FontInterpolator;

    invoke-virtual {v5}, Lcom/android/keyguard/TextInterpolator$FontRun;->getBaseFont()Landroid/graphics/fonts/Font;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/keyguard/TextInterpolator$FontRun;->getTargetFont()Landroid/graphics/fonts/Font;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->getProgress()F

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/keyguard/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/TextInterpolator$FontRun;->setBaseFont(Landroid/graphics/fonts/Font;)V

    goto :goto_5

    :cond_8
    iput v1, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    return-void
.end method

.method public final setLayout(Landroid/text/Layout;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-direct {p0, p1}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    return-void
.end method

.method public final setProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    return-void
.end method
