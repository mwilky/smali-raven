.class public final Lcom/android/keyguard/AnimatableClockView;
.super Landroid/widget/TextView;
.source "AnimatableClockView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AnimatableClockView$Patterns;,
        Lcom/android/keyguard/AnimatableClockView$DozeStateGetter;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final chargeAnimationDelay:I

.field public descFormat:Ljava/lang/String;

.field public dozingColor:I

.field public final dozingWeightInternal:I

.field public format:Ljava/lang/String;

.field public final isSingleLineInternal:Z

.field public lastMeasureCall:Ljava/lang/CharSequence;

.field public lockScreenColor:I

.field public final lockScreenWeightInternal:I

.field public onTextAnimatorInitialized:Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;

.field public textAnimator:Lcom/android/keyguard/TextAnimator;

.field public final time:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->lastMeasureCall:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->time:Ljava/util/Calendar;

    sget-object v0, Lcom/android/systemui/R$styleable;->AnimatableClockView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/AnimatableClockView;->dozingWeightInternal:I

    const/4 v1, 0x2

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/AnimatableClockView;->lockScreenWeightInternal:I

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/AnimatableClockView;->chargeAnimationDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    :try_start_1
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean p2, p0, Lcom/android/keyguard/AnimatableClockView;->isSingleLineInternal:Z

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final animateDoze(ZZ)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-le v3, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v1, p0, Lcom/android/keyguard/AnimatableClockView;->dozingWeightInternal:I

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-le v3, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget v1, p0, Lcom/android/keyguard/AnimatableClockView;->lockScreenWeightInternal:I

    if-eqz v0, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x64

    :cond_3
    move v3, v1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->dozingColor:I

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->lockScreenColor:I

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockView;->textAnimator:Lcom/android/keyguard/TextAnimator;

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iget-object v0, p0, Lcom/android/keyguard/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/android/keyguard/TextInterpolator;->progress:F

    iget-object v3, p0, Lcom/android/keyguard/TextInterpolator;->tmpDrawPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/TextInterpolator;->lerp(Landroid/text/TextPaint;Landroid/text/TextPaint;FLandroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/android/keyguard/TextInterpolator;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_4

    check-cast v2, Lcom/android/keyguard/TextInterpolator$Line;

    iget-object v2, v2, Lcom/android/keyguard/TextInterpolator$Line;->runs:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/TextInterpolator$Run;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :try_start_0
    iget-object v5, p0, Lcom/android/keyguard/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    goto :goto_2

    :cond_1
    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v5

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {v6, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v5, v4, Lcom/android/keyguard/TextInterpolator$Run;->fontRuns:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/TextInterpolator$FontRun;

    iget-object v7, p0, Lcom/android/keyguard/TextInterpolator;->tmpDrawPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1, v4, v6, v7}, Lcom/android/keyguard/TextInterpolator;->drawFontRun(Landroid/graphics/Canvas;Lcom/android/keyguard/TextInterpolator$Run;Lcom/android/keyguard/TextInterpolator$FontRun;Landroid/text/TextPaint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw p0

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_4
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->descFormat:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->lastMeasureCall:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->textAnimator:Lcom/android/keyguard/TextAnimator;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/keyguard/TextAnimator;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    new-instance v0, Lcom/android/keyguard/AnimatableClockView$onMeasure$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockView$onMeasure$1;-><init>(Lcom/android/keyguard/AnimatableClockView;)V

    invoke-direct {p1, p2, v0}, Lcom/android/keyguard/TextAnimator;-><init>(Landroid/text/Layout;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->textAnimator:Lcom/android/keyguard/TextAnimator;

    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->onTextAnimatorInitialized:Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;->run()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->onTextAnimatorInitialized:Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    iget-object p1, p1, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iput-object p0, p1, Lcom/android/keyguard/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    :goto_1
    return-void
.end method

.method public final refreshFormat()V
    .locals 11

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1301fe

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1301ff

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/keyguard/AnimatableClockView$Patterns;->sCacheKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/keyguard/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    const-string v5, "a"

    const/4 v6, 0x0

    invoke-static {v2, v5}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-gt v7, v4, :cond_6

    if-nez v8, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v4

    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    if-nez v8, :cond_4

    if-nez v9, :cond_3

    move v8, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    if-nez v9, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v4, v5

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/keyguard/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    :cond_7
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    sput-object v3, Lcom/android/keyguard/AnimatableClockView$Patterns;->sCacheKey:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/AnimatableClockView;->isSingleLineInternal:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    sget-object v1, Lcom/android/keyguard/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    goto :goto_5

    :cond_8
    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    const-string v1, "HH\nmm"

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    sget-object v1, Lcom/android/keyguard/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    goto :goto_5

    :cond_a
    const-string v1, "hh\nmm"

    :goto_5
    iput-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->format:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/keyguard/AnimatableClockView$Patterns;->sClockView24:Ljava/lang/String;

    goto :goto_6

    :cond_b
    sget-object v0, Lcom/android/keyguard/AnimatableClockView$Patterns;->sClockView12:Ljava/lang/String;

    :goto_6
    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->descFormat:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    return-void
.end method

.method public final refreshTime()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->time:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->descFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->time:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->format:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->time:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final setTextStyle(IJJLandroid/view/animation/PathInterpolator;Ljava/lang/Integer;Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;Z)V
    .locals 12

    move-object v10, p0

    iget-object v0, v10, Lcom/android/keyguard/AnimatableClockView;->textAnimator:Lcom/android/keyguard/TextAnimator;

    if-eqz v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/keyguard/TextAnimator;->setTextStyle$1(FIJJLandroid/animation/TimeInterpolator;Ljava/lang/Integer;Ljava/lang/Runnable;Z)V

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p7

    move-wide v4, p2

    move-object/from16 v6, p6

    move-wide/from16 v7, p4

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;-><init>(Lcom/android/keyguard/AnimatableClockView;ILjava/lang/Integer;JLandroid/view/animation/PathInterpolator;JLcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    iput-object v11, v10, Lcom/android/keyguard/AnimatableClockView;->onTextAnimatorInitialized:Lcom/android/keyguard/AnimatableClockView$setTextStyle$1;

    :goto_0
    return-void
.end method

.method public final setTextStyle(ILjava/lang/Integer;ZJJLcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;)V
    .locals 10

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p4

    move-wide/from16 v4, p6

    move-object v7, p2

    move-object/from16 v8, p8

    move v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(IJJLandroid/view/animation/PathInterpolator;Ljava/lang/Integer;Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;Z)V

    return-void
.end method
