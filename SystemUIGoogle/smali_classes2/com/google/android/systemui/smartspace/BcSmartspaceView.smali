.class public Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.super Landroid/widget/FrameLayout;
.source "BcSmartspaceView.java"

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;


# static fields
.field private static mLastReceivedTargets:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastSurface:I


# instance fields
.field private final mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

.field private mAnimateSmartspaceUpdate:Z

.field private final mAodObserver:Landroid/database/ContentObserver;

.field private mCardPosition:I

.field private mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

.field private mIsAodEnabled:Z

.field private final mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

.field private mPendingTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimation:Landroid/animation/Animator;

.field private mScrollState:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->sLastSurface:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Landroid/database/ContentObserver;

    new-instance p1, Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    new-instance p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->onSettingsChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/google/android/systemui/smartspace/PageIndicator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    return-object p0
.end method

.method static synthetic access$402(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/google/android/systemui/smartspace/CardPagerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    return p1
.end method

.method private animateSmartspaceUpdate(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V
    .locals 10

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_dismiss_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    const/4 v9, 0x1

    aput v8, v5, v9

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v4, [F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    aput v8, v4, v6

    aput v7, v4, v9

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-instance v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$3;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/view/ViewGroup;Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mRunningAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static isAodEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v1, "doze_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V
    .locals 4

    sget-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    if-ne p3, v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getCreationTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    const-string v2, "BcSmartspaceView"

    const-string v3, "received_latency_millis will be -1 due to exception "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setInstanceId(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setFeatureType(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getDozeAmount()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setDisplaySurface(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setRank(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setCardinality(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setReceivedLatency(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->build()Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceLogger;->log(Lcom/google/android/systemui/smartspace/EventEnum;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    return-void
.end method

.method private onSettingsChanged()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->isAodEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    return-void
.end method


# virtual methods
.method public logCurrentDisplayedCardSeen()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BcSmartspaceView"

    const-string v1, "Current card is not present in the Adapter; cannot log."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mCardPosition:I

    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getNextAlarmImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->createUpcomingAlarmTarget(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_SEEN:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getHolidayAlarmsTarget()Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getHolidayAlarmsText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setNumPages(I)V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->isAodEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BcSmartspaceView"

    const-string v2, "Unable to register Doze Always on content observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAodObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->unregisterListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->smartspace_card_pager:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->smartspace_page_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/smartspace/PageIndicator;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lez v0, :cond_0

    if-ge v0, v1, :cond_0

    int-to-float p2, v0

    int-to-float v0, v1

    div-float/2addr p2, v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, p1, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->resetPivot()V

    :goto_0
    return-void
.end method

.method public onSmartspaceTargetsUpdated(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mScrollState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPendingTargets:Ljava/util/List;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object p1, v4

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v4, v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCardAtPosition(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v4, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setTargets(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getCount()I

    move-result p1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 v4, p1, -0x1

    sub-int v3, p1, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setNumPages(I)V

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAnimateSmartspaceUpdate:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->animateSmartspaceUpdate(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V

    :cond_5
    :goto_2
    if-ge v2, p1, :cond_8

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getTargetAtPosition(I)Landroid/app/smartspace/SmartspaceTarget;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->SMARTSPACE_CARD_RECEIVED:Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logSmartspaceEvent(Landroid/app/smartspace/SmartspaceTarget;ILcom/google/android/systemui/smartspace/BcSmartspaceEvent;)V

    new-instance v1, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->setSmartspaceActionId(Ljava/lang/String;)Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    :cond_6
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-virtual {v1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    sget-object p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mLastReceivedTargets:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;->INSTANCE:Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onVisibilityAggregated(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    invoke-direct {v0, p1}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceTargetEvent$Builder;->build()Landroid/app/smartspace/SmartspaceTargetEvent;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    :cond_1
    return-void
.end method

.method public registerDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->registerListener(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceTargetListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mDataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setDataProvider(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    return-void
.end method

.method public setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public setDozeAmount(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setDozeAmount(F)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->getDozeAmount()F

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->sLastSurface:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sput p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->sLastSurface:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mIsAodEnabled:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->logCurrentDisplayedCardSeen()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V

    return-void
.end method

.method public setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setIntentStarter(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$IntentStarter;)V

    return-void
.end method

.method public setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setMediaTarget(Landroid/app/smartspace/SmartspaceTarget;)V

    return-void
.end method

.method public setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPrimaryTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mAdapter:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->setPrimaryTextColor(I)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->mPageIndicator:Lcom/google/android/systemui/smartspace/PageIndicator;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/PageIndicator;->setPrimaryColor(I)V

    return-void
.end method
