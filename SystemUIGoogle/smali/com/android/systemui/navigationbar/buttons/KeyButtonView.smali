.class public Lcom/android/systemui/navigationbar/buttons/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mCode:I

.field private mContentDescriptionRes:I

.field private mDarkIntensity:F

.field private mDownTime:J

.field private mGestureAborted:Z

.field private mHasOvalBg:Z

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private mIsVertical:Z

.field mLongClicked:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOvalBgPaint:Landroid/graphics/Paint;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPlaySounds:Z

.field private final mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    new-instance v5, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v5}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/hardware/input/InputManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mHasOvalBg:Z

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$1;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p5, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, p5, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$styleable;->KeyButtonView_keyCode:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    sget p3, Lcom/android/systemui/R$styleable;->KeyButtonView_playSound:I

    const/4 p5, 0x1

    invoke-virtual {p2, p3, p5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mPlaySounds:Z

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    sget v1, Lcom/android/systemui/R$styleable;->KeyButtonView_android_contentDescription:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    iput p3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mContentDescriptionRes:I

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p5}, Landroid/widget/ImageView;->setClickable(Z)V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    new-instance p2, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    sget p3, Lcom/android/systemui/R$dimen;->key_button_ripple_max_width:I

    invoke-direct {p2, p1, p0, p3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->forceHasOverlappingRendering(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private logSomePresses(II)V
    .locals 3

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NONE:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_a

    and-int/lit16 p1, p2, 0x100

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6

    const/16 p2, 0xbb

    if-eq p1, p2, :cond_4

    move-object p1, v2

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_OVERVIEW_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_BACK_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    :cond_8
    if-eqz v0, :cond_9

    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_LONGPRESS:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    goto :goto_1

    :cond_9
    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;->NAVBAR_HOME_BUTTON_TAP:Lcom/android/systemui/navigationbar/buttons/KeyButtonView$NavBarButtonEvent;

    :goto_1
    if-eq p1, v2, :cond_a

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private sendEvent(IIJ)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x3a3

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v5, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a5

    invoke-virtual {v3, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x3a4

    invoke-virtual {v3, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->logSomePresses(II)V

    iget v2, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Back button event: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v2, p1

    if-ne v2, v3, :cond_2

    iget-object v6, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    and-int/lit8 v4, v1, 0x20

    if-nez v4, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    goto :goto_1

    :cond_1
    move/from16 v2, p1

    :cond_2
    :goto_1
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_3

    move v13, v3

    goto :goto_2

    :cond_3
    move v13, v5

    :goto_2
    new-instance v3, Landroid/view/KeyEvent;

    iget-wide v7, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    iget v12, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    or-int/lit8 v1, v1, 0x8

    or-int/lit8 v17, v1, 0x40

    const/16 v18, 0x101

    move-object v6, v3

    move-wide/from16 v9, p3

    move/from16 v11, p1

    invoke-direct/range {v6 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-eq v1, v2, :cond_5

    invoke-virtual {v3, v1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v3, v5}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 2

    const-string v0, "b/63783866"

    const-string v1, "KeyButtonView.abortCurrentGesture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->abortDelayedRipple()V

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAborted:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    move-object v1, p1

    move v4, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public isClickable()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public loadAsync(Landroid/graphics/drawable/Icon;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView$2;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonView;)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mContentDescriptionRes:I

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->isLongClickable()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAborted:Z

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mGestureAborted:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    return v2

    :cond_1
    const/4 v3, 0x1

    if-eqz v1, :cond_e

    const/16 v4, 0x20

    if-eq v1, v3, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getQuickStepTouchSlopPx(Landroid/content/Context;)F

    move-result v1

    iget v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownX:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownY:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_11

    :cond_5
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    :cond_6
    invoke-virtual {p0}, Landroid/widget/ImageView;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    if-nez p1, :cond_7

    move p1, v3

    goto :goto_0

    :cond_7
    move p1, v2

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x96

    cmp-long v1, v5, v7

    if-lez v1, :cond_8

    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v2

    :goto_1
    if-eqz v0, :cond_9

    if-eqz p1, :cond_a

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->playSoundEffect(I)V

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    if-nez v0, :cond_a

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :cond_a
    :goto_2
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    goto :goto_3

    :cond_c
    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_d

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mLongClicked:Z

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mTouchDownY:I

    iget p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz p1, :cond_f

    iget-wide v4, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDownTime:J

    invoke-direct {p0, v2, v2, v4, v5}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(IIJ)V

    goto :goto_4

    :cond_f
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->performHapticFeedback(I)Z

    :goto_4
    if-nez v0, :cond_10

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->playSoundEffect(I)V

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_5
    return v3
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    :cond_0
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-direct {p0, v1, v1, p1, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(IIJ)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->playSoundEffect(I)V

    return v0

    :cond_0
    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    iget v2, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    if-eqz v2, :cond_1

    const/16 p1, 0x80

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(II)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public playSoundEffect(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mPlaySounds:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManager;->playSoundEffect(II)V

    return-void
.end method

.method public sendEvent(II)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->sendEvent(IIJ)V

    return-void
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDelayTouchFeedback(Z)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mDarkIntensity:F

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->setDarkIntensity(F)V

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mHasOvalBg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOvalBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->getDrawableBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->hasOvalBg()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->OVAL:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setType(Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mIsVertical:Z

    return-void
.end method
