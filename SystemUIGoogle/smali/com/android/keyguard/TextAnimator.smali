.class public final Lcom/android/keyguard/TextAnimator;
.super Ljava/lang/Object;
.source "TextAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextAnimator.kt\ncom/android/keyguard/TextAnimator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private final invalidateCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private textInterpolator:Lcom/android/keyguard/TextInterpolator;

.field private final typefaceCache:Landroid/util/SparseArray;
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

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p2, "ofFloat(1f).apply {\n        duration = DEFAULT_ANIMATION_DURATION\n        addUpdateListener {\n            textInterpolator.progress = it.animatedValue as Float\n            invalidateCallback()\n        }\n        addListener(object : AnimatorListenerAdapter() {\n            override fun onAnimationEnd(animation: Animator?) {\n                textInterpolator.rebase()\n            }\n            override fun onAnimationCancel(animation: Animator?) = textInterpolator.rebase()\n        })\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator;->typefaceCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static final synthetic access$getInvalidateCallback$p(Lcom/android/keyguard/TextAnimator;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/TextInterpolator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getTextInterpolator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/keyguard/TextInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final setTextStyle(IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V
    .locals 2

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator;->rebase()V

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator;->getTargetPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    if-ltz p1, :cond_2

    iget-object p2, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {p2}, Lcom/android/keyguard/TextInterpolator;->getTargetPaint()Landroid/text/TextPaint;

    move-result-object p2

    iget-object v0, p0, Lcom/android/keyguard/TextAnimator;->typefaceCache:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/TextAnimator$setTextStyle$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/TextAnimator$setTextStyle$1;-><init>(Lcom/android/keyguard/TextAnimator;I)V

    invoke-static {v0, p1, v1}, Lcom/android/keyguard/TextAnimatorKt;->access$getOrElse(Landroid/util/SparseArray;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {p1}, Lcom/android/keyguard/TextInterpolator;->getTargetPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {p1}, Lcom/android/keyguard/TextInterpolator;->onTargetPaintModified()V

    if-eqz p4, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p8, p9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object p1, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, -0x1

    cmp-long p2, p5, p2

    if-nez p2, :cond_4

    const-wide/16 p5, 0x12c

    :cond_4
    invoke-virtual {p1, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-nez p7, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/TextAnimator;->getAnimator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_0
    if-eqz p10, :cond_6

    new-instance p1, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;

    invoke-direct {p1, p10, p0}, Lcom/android/keyguard/TextAnimator$setTextStyle$listener$1;-><init>(Ljava/lang/Runnable;Lcom/android/keyguard/TextAnimator;)V

    iget-object p2, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Lcom/android/keyguard/TextInterpolator;->setProgress(F)V

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->rebase()V

    :goto_1
    return-void
.end method

.method public final updateLayout(Landroid/text/Layout;)V
    .locals 1

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/TextInterpolator;->setLayout(Landroid/text/Layout;)V

    return-void
.end method
