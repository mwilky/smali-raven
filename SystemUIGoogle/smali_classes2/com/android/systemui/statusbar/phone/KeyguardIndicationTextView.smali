.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Landroid/widget/TextView;
.source "KeyguardIndicationTextView.java"


# static fields
.field private static sButtonStyleId:I

.field private static sStyleId:I


# instance fields
.field private mAnimationsEnabled:Z

.field private mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

.field private mLastAnimator:Landroid/animation/Animator;

.field private mMessage:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/R$style;->TextAppearance_Keyguard_BottomArea:I

    sput v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->sStyleId:I

    sget v0, Lcom/android/systemui/R$style;->TextAppearance_Keyguard_BottomArea_Button:I

    sput v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->sButtonStyleId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setNextIndication()V

    return-void
.end method

.method private getFadeInDelay()J
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method private getFadeInDuration()J
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x13d

    return-wide v0
.end method

.method private getFadeOutDuration()J
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xa7

    return-wide v0
.end method

.method private getInAnimator()Landroid/animation/AnimatorSet;
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeInDelay()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeInDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v6, v4, [F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getYTranslationPixels()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v5

    const/4 v7, 0x0

    aput v7, v6, v2

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getYInDuration()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, v4, [Landroid/animation/Animator;

    aput-object v3, p0, v5

    aput-object v1, p0, v2

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getOutAnimator()Landroid/animation/AnimatorSet;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeOutDuration()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v3, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput v5, v7, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getYTranslationPixels()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v7, v2

    invoke-static {p0, v3, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeOutDuration()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-array p0, v6, [Landroid/animation/Animator;

    aput-object v1, p0, v4

    aput-object v3, p0, v2

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private getYInDuration()J
    .locals 2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x258

    return-wide v0
.end method

.method private getYTranslationPixels()I
    .locals 1

    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_y_translation:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private setNextIndication()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndication;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->sButtonStyleId:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->sStyleId:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndication;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndication;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndication;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndication;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndication;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearMessages()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public switchIndication(Lcom/android/systemui/keyguard/KeyguardIndication;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardIndication;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;ZLjava/lang/Runnable;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Lcom/android/systemui/keyguard/KeyguardIndication;

    if-eqz p3, :cond_4

    const/4 p1, 0x1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardIndication;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getOutAnimator()Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;

    invoke-direct {p2, p0, p4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getInAnimator()Landroid/animation/AnimatorSet;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/animation/Animator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getOutAnimator()Landroid/animation/AnimatorSet;

    move-result-object v1

    aput-object v1, p4, p3

    aput-object p2, p4, p1

    invoke-virtual {v0, p4}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setNextIndication()V

    if-eqz p4, :cond_5

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mLastAnimator:Landroid/animation/Animator;

    :cond_6
    :goto_3
    return-void
.end method
