.class public final Lcom/android/keyguard/TextAnimator;
.super Ljava/lang/Object;
.source "TextAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextAnimator.kt\ncom/android/keyguard/TextAnimator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"
.end annotation


# instance fields
.field public animator:Landroid/animation/ValueAnimator;

.field public final invalidateCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public textInterpolator:Lcom/android/keyguard/TextInterpolator;

.field public final typefaceCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/Layout;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/keyguard/TextInterpolator;

    invoke-direct {p2, p1}, Lcom/android/keyguard/TextInterpolator;-><init>(Landroid/text/Layout;)V

    iput-object p2, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p1, p2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/keyguard/TextAnimator$animator$1$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/TextAnimator$animator$1$1;-><init>(Lcom/android/keyguard/TextAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/keyguard/TextAnimator$animator$1$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/TextAnimator$animator$1$2;-><init>(Lcom/android/keyguard/TextAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator;->typefaceCache:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final setTextStyle$1(FIJJLandroid/animation/TimeInterpolator;Ljava/lang/Integer;Ljava/lang/Runnable;Z)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    if-eqz p10, :cond_0

    iget-object v5, v0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v5, v0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {v5}, Lcom/android/keyguard/TextInterpolator;->rebase()V

    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-ltz v5, :cond_1

    iget-object v5, v0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iget-object v5, v5, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    if-ltz v2, :cond_3

    iget-object v1, v0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iget-object v1, v1, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget-object v5, v0, Lcom/android/keyguard/TextAnimator;->typefaceCache:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/keyguard/TextAnimator$setTextStyle$1;

    invoke-direct {v6, v0, v2}, Lcom/android/keyguard/TextAnimator$setTextStyle$1;-><init>(Lcom/android/keyguard/TextAnimator;I)V

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->invoke()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    check-cast v7, Landroid/graphics/Typeface;

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_3
    if-eqz p8, :cond_4

    iget-object v1, v0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iget-object v1, v1, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_4
    iget-object v1, v0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iget-object v2, v1, Lcom/android/keyguard/TextInterpolator;->layout:Landroid/text/Layout;

    iget-object v5, v1, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-static {v2, v5}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v1, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_17

    iget-object v1, v1, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    check-cast v1, Lcom/android/keyguard/TextInterpolator$Line;

    iget-object v1, v1, Lcom/android/keyguard/TextInterpolator$Line;->runs:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v1, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v2, v10}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/text/PositionedGlyphs;

    check-cast v1, Lcom/android/keyguard/TextInterpolator$Run;

    invoke-virtual {v2}, Landroid/graphics/text/PositionedGlyphs;->glyphCount()I

    move-result v14

    iget-object v15, v1, Lcom/android/keyguard/TextInterpolator$Run;->glyphIds:[I

    array-length v15, v15

    if-ne v14, v15, :cond_6

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    if-eqz v14, :cond_10

    iget-object v14, v1, Lcom/android/keyguard/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/TextInterpolator$FontRun;

    iget v7, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    invoke-virtual {v2, v7}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v7

    iget v8, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    iget v10, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    :goto_5
    if-ge v8, v10, :cond_b

    add-int/lit8 v16, v8, 0x1

    move-object/from16 v17, v5

    iget v5, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    invoke-virtual {v2, v5}, Landroid/graphics/text/PositionedGlyphs;->getGlyphId(I)I

    move-result v5

    move-object/from16 v18, v6

    iget-object v6, v1, Lcom/android/keyguard/TextInterpolator$Run;->glyphIds:[I

    move/from16 v19, v10

    iget v10, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    aget v6, v6, v10

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-eqz v5, :cond_a

    invoke-virtual {v2, v8}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v5

    if-ne v7, v5, :cond_8

    const/4 v5, 0x1

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_9

    move/from16 v8, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v10, v19

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The new layout has different font run. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Landroid/graphics/text/PositionedGlyphs;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "The new layout has different glyph ID at "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    iget-object v5, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v7}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/fonts/Font;->getTtcIndex()I

    move-result v8

    if-ne v6, v8, :cond_c

    invoke-virtual {v7}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/fonts/Font;->getSourceIdentifier()I

    move-result v5

    if-ne v6, v5, :cond_c

    const/4 v5, 0x1

    goto :goto_8

    :cond_c
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_d

    iput-object v7, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/16 v10, 0xa

    goto/16 :goto_4

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New font cannot be interpolated with existing font. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    iget-object v5, v1, Lcom/android/keyguard/TextInterpolator$Run;->baseX:[F

    array-length v5, v5

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v5, :cond_f

    add-int/lit8 v7, v6, 0x1

    iget-object v8, v1, Lcom/android/keyguard/TextInterpolator$Run;->targetX:[F

    invoke-virtual {v2, v6}, Landroid/graphics/text/PositionedGlyphs;->getGlyphX(I)F

    move-result v10

    aput v10, v8, v6

    iget-object v8, v1, Lcom/android/keyguard/TextInterpolator$Run;->targetY:[F

    invoke-virtual {v2, v6}, Landroid/graphics/text/PositionedGlyphs;->getGlyphY(I)F

    move-result v10

    aput v10, v8, v6

    move v6, v7

    goto :goto_9

    :cond_f
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/16 v10, 0xa

    goto/16 :goto_2

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new layout has different glyph count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    const/16 v10, 0xa

    goto/16 :goto_1

    :cond_12
    if-eqz p10, :cond_16

    iget-object v1, v0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    move-wide/from16 v5, p5

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, v0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v5, -0x1

    cmp-long v2, p3, v5

    if-nez v2, :cond_13

    const-wide/16 v5, 0x12c

    goto :goto_a

    :cond_13
    move-wide/from16 v5, p3

    :goto_a
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez v3, :cond_14

    goto :goto_b

    :cond_14
    iget-object v1, v0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_b
    if-eqz v4, :cond_15

    new-instance v1, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;

    invoke-direct {v1, v4, v0}, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;-><init>(Ljava/lang/Runnable;Lcom/android/keyguard/TextAnimator;)V

    iget-object v2, v0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_15
    iget-object v0, v0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c

    :cond_16
    iget-object v1, v0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/keyguard/TextInterpolator;->progress:F

    invoke-virtual {v1}, Lcom/android/keyguard/TextInterpolator;->rebase()V

    iget-object v0, v0, Lcom/android/keyguard/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_c
    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The new layout result has different line count."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
