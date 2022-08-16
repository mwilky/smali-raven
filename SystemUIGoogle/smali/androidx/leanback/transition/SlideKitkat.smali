.class Landroidx/leanback/transition/SlideKitkat;
.super Landroid/transition/Visibility;
.source "SlideKitkat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;,
        Landroidx/leanback/transition/SlideKitkat$CalculateSlideVertical;,
        Landroidx/leanback/transition/SlideKitkat$CalculateSlideHorizontal;,
        Landroidx/leanback/transition/SlideKitkat$CalculateSlide;
    }
.end annotation


# static fields
.field public static final sAccelerate:Landroid/view/animation/AccelerateInterpolator;

.field public static final sCalculateBottom:Landroidx/leanback/transition/SlideKitkat$4;

.field public static final sCalculateEnd:Landroidx/leanback/transition/SlideKitkat$6;

.field public static final sCalculateLeft:Landroidx/leanback/transition/SlideKitkat$1;

.field public static final sCalculateRight:Landroidx/leanback/transition/SlideKitkat$3;

.field public static final sCalculateStart:Landroidx/leanback/transition/SlideKitkat$5;

.field public static final sCalculateTop:Landroidx/leanback/transition/SlideKitkat$2;

.field public static final sDecelerate:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field public mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sDecelerate:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sAccelerate:Landroid/view/animation/AccelerateInterpolator;

    new-instance v0, Landroidx/leanback/transition/SlideKitkat$1;

    invoke-direct {v0}, Landroidx/leanback/transition/SlideKitkat$1;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sCalculateLeft:Landroidx/leanback/transition/SlideKitkat$1;

    new-instance v0, Landroidx/leanback/transition/SlideKitkat$2;

    invoke-direct {v0}, Landroidx/leanback/transition/SlideKitkat$2;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sCalculateTop:Landroidx/leanback/transition/SlideKitkat$2;

    new-instance v0, Landroidx/leanback/transition/SlideKitkat$3;

    invoke-direct {v0}, Landroidx/leanback/transition/SlideKitkat$3;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sCalculateRight:Landroidx/leanback/transition/SlideKitkat$3;

    new-instance v0, Landroidx/leanback/transition/SlideKitkat$4;

    invoke-direct {v0}, Landroidx/leanback/transition/SlideKitkat$4;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sCalculateBottom:Landroidx/leanback/transition/SlideKitkat$4;

    new-instance v0, Landroidx/leanback/transition/SlideKitkat$5;

    invoke-direct {v0}, Landroidx/leanback/transition/SlideKitkat$5;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sCalculateStart:Landroidx/leanback/transition/SlideKitkat$5;

    new-instance v0, Landroidx/leanback/transition/SlideKitkat$6;

    invoke-direct {v0}, Landroidx/leanback/transition/SlideKitkat$6;-><init>()V

    sput-object v0, Landroidx/leanback/transition/SlideKitkat;->sCalculateEnd:Landroidx/leanback/transition/SlideKitkat$6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroidx/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    sget-object v0, Landroidx/leanback/R$styleable;->lbSlide:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x3

    const/16 v1, 0x50

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-virtual {p0, v2, v3}, Landroid/transition/Visibility;->setDuration(J)Landroid/transition/Transition;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Landroid/transition/Visibility;->setStartDelay(J)Landroid/transition/Transition;

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/transition/Visibility;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static createAnimation(Landroid/view/View;Landroid/util/Property;FFFLandroid/view/animation/BaseInterpolator;I)Landroid/animation/ObjectAnimator;
    .locals 7

    const v0, 0x7f0b0388

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    if-ne p2, p1, :cond_0

    aget p2, v1, v2

    goto :goto_0

    :cond_0
    aget p2, v1, v3

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p2, v0, v3

    aput p3, v0, v2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v6, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p3

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/leanback/transition/SlideKitkat$SlideAnimatorListener;-><init>(Landroid/view/View;Landroid/util/Property;FFI)V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v6}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    invoke-virtual {p2, p5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p2
.end method


# virtual methods
.method public final onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 7

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    iget-object p2, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {p1, v0}, Landroidx/leanback/transition/SlideKitkat$CalculateSlide;->getHere(Landroid/view/View;)F

    move-result v4

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {p1, v0}, Landroidx/leanback/transition/SlideKitkat$CalculateSlide;->getGone(Landroid/view/View;)F

    move-result v2

    iget-object p0, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {p0}, Landroidx/leanback/transition/SlideKitkat$CalculateSlide;->getProperty()Landroid/util/Property;

    move-result-object v1

    sget-object v5, Landroidx/leanback/transition/SlideKitkat;->sDecelerate:Landroid/view/animation/DecelerateInterpolator;

    const/4 v6, 0x0

    move v3, v4

    invoke-static/range {v0 .. v6}, Landroidx/leanback/transition/SlideKitkat;->createAnimation(Landroid/view/View;Landroid/util/Property;FFFLandroid/view/animation/BaseInterpolator;I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 7

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {p1, v0}, Landroidx/leanback/transition/SlideKitkat$CalculateSlide;->getHere(Landroid/view/View;)F

    move-result v4

    iget-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {p1, v0}, Landroidx/leanback/transition/SlideKitkat$CalculateSlide;->getGone(Landroid/view/View;)F

    move-result v3

    iget-object p0, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    invoke-interface {p0}, Landroidx/leanback/transition/SlideKitkat$CalculateSlide;->getProperty()Landroid/util/Property;

    move-result-object v1

    sget-object v5, Landroidx/leanback/transition/SlideKitkat;->sAccelerate:Landroid/view/animation/AccelerateInterpolator;

    const/4 v6, 0x4

    move v2, v4

    invoke-static/range {v0 .. v6}, Landroidx/leanback/transition/SlideKitkat;->createAnimation(Landroid/view/View;Landroid/util/Property;FFFLandroid/view/animation/BaseInterpolator;I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final setSlideEdge(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    const v0, 0x800003

    if-eq p1, v0, :cond_1

    const v0, 0x800005

    if-ne p1, v0, :cond_0

    sget-object p1, Landroidx/leanback/transition/SlideKitkat;->sCalculateEnd:Landroidx/leanback/transition/SlideKitkat$6;

    iput-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid slide direction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p1, Landroidx/leanback/transition/SlideKitkat;->sCalculateStart:Landroidx/leanback/transition/SlideKitkat$5;

    iput-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/leanback/transition/SlideKitkat;->sCalculateBottom:Landroidx/leanback/transition/SlideKitkat$4;

    iput-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_0

    :cond_3
    sget-object p1, Landroidx/leanback/transition/SlideKitkat;->sCalculateTop:Landroidx/leanback/transition/SlideKitkat$2;

    iput-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_0

    :cond_4
    sget-object p1, Landroidx/leanback/transition/SlideKitkat;->sCalculateRight:Landroidx/leanback/transition/SlideKitkat$3;

    iput-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    goto :goto_0

    :cond_5
    sget-object p1, Landroidx/leanback/transition/SlideKitkat;->sCalculateLeft:Landroidx/leanback/transition/SlideKitkat$1;

    iput-object p1, p0, Landroidx/leanback/transition/SlideKitkat;->mSlideCalculator:Landroidx/leanback/transition/SlideKitkat$CalculateSlide;

    :goto_0
    return-void
.end method
