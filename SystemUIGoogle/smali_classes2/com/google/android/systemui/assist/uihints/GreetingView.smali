.class public Lcom/google/android/systemui/assist/uihints/GreetingView;
.super Landroid/widget/TextView;
.source "GreetingView.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;
    }
.end annotation


# instance fields
.field private final START_DELTA:I

.field private final TEXT_COLOR_DARK:I

.field private final TEXT_COLOR_LIGHT:I

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mGreetingBuilder:Landroid/text/SpannableStringBuilder;

.field private mMaxAlpha:F

.field private final mSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/GreetingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/GreetingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/GreetingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mGreetingBuilder:Landroid/text/SpannableStringBuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mSpans:Ljava/util/ArrayList;

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->transcription_text_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->TEXT_COLOR_DARK:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->transcription_text_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->TEXT_COLOR_LIGHT:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->assist_greeting_start_delta:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->START_DELTA:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mMaxAlpha:F

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/GreetingView;)F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mMaxAlpha:F

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/uihints/GreetingView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->START_DELTA:I

    return p0
.end method

.method private animateIn(F)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "GreetingView"

    const-string p1, "Already animating in greeting view; ignoring"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x3f99999a    # 1.2f

    div-float/2addr p1, v1

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, p1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;

    iget-object v5, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1, v2, v0, v5}, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;->initAnimator(JLandroid/view/animation/OvershootInterpolator;Landroid/animation/AnimatorSet;)V

    const-wide/16 v4, 0x8

    add-long/2addr v1, v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/GreetingView;->setLayoutParams(FLandroid/view/animation/OvershootInterpolator;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setLayoutParams(FLandroid/view/animation/OvershootInterpolator;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->transcription_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->convertSpToPx(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x40c00000    # 6.0f

    add-float/2addr v1, v2

    mul-float/2addr p1, v2

    add-float/2addr p1, v2

    div-float/2addr v1, p1

    iget p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->START_DELTA:I

    int-to-float p1, p1

    invoke-virtual {p2, v1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private setUpTextSpans(Ljava/lang/String;)V
    .locals 8

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mGreetingBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mSpans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mGreetingBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    new-instance v5, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/google/android/systemui/assist/uihints/GreetingView$StaggeredSpan;-><init>(Lcom/google/android/systemui/assist/uihints/GreetingView;Lcom/google/android/systemui/assist/uihints/GreetingView$1;)V

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mGreetingBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v7, 0x21

    invoke-virtual {v6, v5, v3, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mSpans:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public onFontSizeChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->transcription_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method setGreeting(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method setGreetingAnimated(Ljava/lang/String;F)V
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->START_DELTA:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GreetingView;->setUpTextSpans(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mGreetingBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/GreetingView;->animateIn(F)V

    return-void
.end method

.method public setHasDarkBackground(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->TEXT_COLOR_DARK:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->TEXT_COLOR_LIGHT:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/GreetingView;->mMaxAlpha:F

    return-void
.end method
