.class public Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
.super Landroid/widget/FrameLayout;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;
    }
.end annotation


# static fields
.field private static final SHORTCUT_BAR_BACKGROUND_COLOR:I


# instance fields
.field private mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

.field private final mBarMarginEnd:I

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mEntryPointButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

.field private mExcludeBackRegionCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mFpsView:Landroid/widget/TextView;

.field private mInsets:Landroid/graphics/Insets;

.field private mIsAttached:Z

.field private mIsDockingAnimationRunning:Z

.field private mIsDragging:Z

.field private mIsEntryPointVisible:Z

.field private mIsFpsVisible:Z

.field private mIsRecordVisible:Z

.field private mIsScreenshotVisible:Z

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

.field private mOrientation:I

.field private mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

.field private mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

.field private final mRevealButtonIconHeight:I

.field private final mRevealButtonIconWidth:I

.field private final mRevealButtonOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

.field private mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

.field private mScreenshotButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

.field private mShiftForTransientBar:I

.field private final mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mTempInts:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$Fh0qqHOrCRyAPxOwTOotkeZNydM(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$1(Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NS9vkODaCwhEYbtFddi49e-M1po(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/android/internal/util/ScreenshotHelper;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$0(Lcom/android/internal/util/ScreenshotHelper;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dqYjxawPxSV5jMv-27VIg7K7nVQ(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j0ijFyYiP1AeFkRRcD7j7HqGQck(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->updateSystemGestureExcludeRects()V

    return-void
.end method

.method public static synthetic $r8$lambda$vhLt2XijpZu7JLMTbeBgVWV6G-4(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z97dER_mVbNAS0z7LmQ5soxX0mw(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->lambda$init$2(Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#99000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->SHORTCUT_BAR_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDockingAnimationRunning:Z

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDragging:Z

    const/4 p1, 0x2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTmpRect:Landroid/graphics/Rect;

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$1;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$2;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->game_dashboard_shortcut_bar_reveal_button_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconHeight:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->game_dashboard_shortcut_bar_reveal_button_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    div-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->game_dashboard_shortcut_bar_margin_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBarMarginEnd:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsBottom()F

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getRevealButtonTop()F

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getRevealButtonBottom()F

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$1500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getViewTranslationX()F

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getViewTranslationY()F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarWidth()I

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setTranslation(FF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBackIfNecessary()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnLayoutChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/graphics/Insets;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->dock(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDockingAnimationRunning:Z

    return p0
.end method

.method static synthetic access$502(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDockingAnimationRunning:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/animation/Animator;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBackVertically()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsLeft()F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsRight()F

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsTop()F

    move-result p0

    return p0
.end method

.method private autoUndock(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->unDock(ZF)V

    :cond_1
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Landroid/os/Handler;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            "Landroid/os/Handler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            ")",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarView;"
        }
    .end annotation

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$layout;->game_dashboard_shortcut_bar:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->init(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Landroid/os/Handler;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)V

    return-object p0
.end method

.method private dock(Z)V
    .locals 12

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDockingAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->cancelAnimation()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->cancelAnimation()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v0, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_WIDTH:Landroid/util/IntProperty;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    sget-object v1, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_HEIGHT:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/IntProperty;->set(Ljava/lang/Object;Ljava/lang/Integer;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconWidth:I

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconWidth:I

    neg-int v3, v3

    :goto_0
    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget-object v5, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v3, v7, v8

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    new-array v7, v6, [I

    iget v9, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconWidth:I

    mul-int/2addr v9, v2

    aput v9, v7, v8

    invoke-static {v5, v0, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    new-array v7, v6, [I

    iget v9, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconHeight:I

    aput v9, v7, v8

    invoke-static {v5, v1, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    sget-object v7, Lcom/google/android/systemui/gamedashboard/RevealButton;->ICON_ALPHA:Landroid/util/IntProperty;

    new-array v9, v2, [I

    fill-array-data v9, :array_0

    invoke-static {v5, v7, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    sget-object v9, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v6, [F

    aput v3, v10, v8

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v9, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget-object v10, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    fill-array-data v11, :array_1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v11, 0x6

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v4, v11, v8

    aput-object v0, v11, v6

    aput-object v1, v11, v2

    const/4 v0, 0x3

    aput-object v5, v11, v0

    const/4 v0, 0x4

    aput-object v7, v11, v0

    const/4 v0, 0x5

    aput-object v9, v11, v0

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v10, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;

    invoke-direct {v0, p0, p1, v3}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$5;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;ZF)V

    invoke-virtual {v10, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getBarHeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method private getBarMovementBoundsBottom()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getBarMovementBoundsLeft()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBarMarginEnd:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getBarMovementBoundsRight()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBarMarginEnd:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getBarMovementBoundsTop()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->top:I

    int-to-float p0, p0

    return p0
.end method

.method private getBarWidth()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p0

    return p0
.end method

.method private getRevealButtonBottom()F
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonIconHeight:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0
.end method

.method private getRevealButtonTop()F
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    iget p0, p0, Landroid/graphics/Insets;->top:I

    int-to-float p0, p0

    return p0
.end method

.method private getTouchableRegion()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTempInts:[I

    aget v2, v2, v4

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarHeight()I

    move-result p0

    add-int/2addr v2, p0

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getViewTranslationX()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result p0

    return p0
.end method

.method private getViewTranslationY()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p0

    return p0
.end method

.method private handleScreenRecord()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->getController()Lcom/android/systemui/screenrecord/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;->addCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->handleClick()V

    return-void
.end method

.method private init(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Landroid/os/Handler;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/google/android/systemui/gamedashboard/ShortcutBarController;",
            "Landroid/os/Handler;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;",
            ">;",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
            "Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;",
            ")V"
        }
    .end annotation

    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p6, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    new-instance v4, Lcom/android/internal/util/ScreenshotHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object p5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    new-instance p5, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda2;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;)V

    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/gamedashboard/RevealButton;->setSide(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$4;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private synthetic lambda$init$0(Lcom/android/internal/util/ScreenshotHelper;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;)V
    .locals 10

    invoke-virtual {p5}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-static {p5}, Lcom/android/systemui/shared/recents/utilities/BitmapUtil;->hardwareBitmapToBundle(Landroid/graphics/Bitmap;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p5, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iget v4, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v5, 0x1

    const/4 v7, 0x5

    const/4 v9, 0x0

    move-object v0, p1

    move-object v2, p2

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/util/ScreenshotHelper;->provideScreenshot(Landroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;ILandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$init$1(Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V
    .locals 9

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->getGameTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v6, Landroid/graphics/Rect;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v2, 0x0

    invoke-direct {v6, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move-object v3, v6

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/android/internal/util/ScreenshotHelper;Landroid/graphics/Rect;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;)V

    invoke-interface {p4, p1, v6, v7, v8}, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;->screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$init$2(Ljava/util/Optional;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;Landroid/view/View;)V
    .locals 1

    iget-object p5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    sget-object v0, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    invoke-virtual {p5, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    new-instance p5, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;

    invoke-direct {p5, p0, p2, p3, p4}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Handler;)V

    invoke-virtual {p1, p5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$init$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->handleScreenRecord()V

    return-void
.end method

.method private synthetic lambda$init$4(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->autoUndock()V

    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    return-void
.end method

.method private onScreenRecordButtonVisible()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->getController()Lcom/android/systemui/screenrecord/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;->addCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenRecordButtonDrawable()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isRecording()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenRecordButtonBackground(Z)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->setIsRecording(Z)V

    return-void
.end method

.method private onScreenRecordStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->getController()Lcom/android/systemui/screenrecord/RecordingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/screenrecord/RecordingController;->removeCallback(Lcom/android/systemui/screenrecord/RecordingController$RecordingStateChangeCallback;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenRecordButtonBackground(Z)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenRecordButtonDrawable()V

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->setIsRecording(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->accessibility_game_dashboard_shortcut_bar_start_recording:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setScreenRecordButtonBackground(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->game_dashboard_screen_record_countdown:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->SHORTCUT_BAR_BACKGROUND_COLOR:I

    :goto_0
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setScreenRecordButtonDrawable()V
    .locals 4

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_screen_record:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setTranslation(FF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private snapBarBack(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsRight()F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsLeft()F

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget-object v1, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBackVertically()Landroid/animation/Animator;

    move-result-object p0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v4

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, p0, p1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private snapBarBackIfNecessary()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBack(Z)V

    return-void
.end method

.method private snapBarBackVertically()Landroid/animation/Animator;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsTop()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getBarMovementBoundsBottom()F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget-object v1, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private unDock(ZF)V
    .locals 10

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDockingAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->cancelAnimation()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButtonOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;->cancelAnimation()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBarMarginEnd:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr p1, p2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBarMarginEnd:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    sget-object v0, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-static {p2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    sget-object v3, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_WIDTH:Landroid/util/IntProperty;

    new-array v5, v1, [I

    iget-object v6, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    aput v6, v5, v4

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    sget-object v5, Lcom/google/android/systemui/gamedashboard/RevealButton;->BACKGROUND_HEIGHT:Landroid/util/IntProperty;

    new-array v6, v1, [I

    iget-object v7, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    aput v7, v6, v4

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    sget-object v6, Lcom/google/android/systemui/gamedashboard/RevealButton;->ICON_ALPHA:Landroid/util/IntProperty;

    new-array v7, v2, [I

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget-object v7, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v1, [F

    aput p1, v8, v4

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    new-array v9, v2, [F

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x6

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object p2, v9, v4

    aput-object v0, v9, v1

    aput-object v3, v9, v2

    const/4 p2, 0x3

    aput-object v5, v9, p2

    const/4 p2, 0x4

    aput-object v6, v9, p2

    const/4 p2, 0x5

    aput-object v7, v9, p2

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance p2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v8, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;

    invoke-direct {p2, p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$6;-><init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;F)V

    invoke-virtual {v8, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateSystemGestureExcludeRects()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mExcludeBackRegionCallback:Ljava/util/function/Consumer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getTouchableRegion()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mExcludeBackRegionCallback:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public autoUndock()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->autoUndock(F)V

    return-void
.end method

.method public isFpsVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

    return p0
.end method

.method public isRecordVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    return p0
.end method

.method public isScreenshotVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mShiftForTransientBar:I

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->right:I

    if-lez v1, :cond_1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->right:I

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mShiftForTransientBar:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mInsets:Landroid/graphics/Insets;

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    return-void

    :cond_0
    if-eq v1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->onOrientationChanged(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->onScreenRecordButtonVisible()V

    :cond_2
    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->getTouchableRegion()V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOrientation:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public onCountdown(J)V
    .locals 2

    const-wide/16 v0, 0x1f4

    add-long/2addr p1, v0

    const/16 v0, 0x3e8

    invoke-static {p1, p2, v0}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide p1

    long-to-int p1, p1

    sget p2, Lcom/android/systemui/R$drawable;->ic_screen_record:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/systemui/R$drawable;->game_dashboard_screen_record_countdown_3:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/android/systemui/R$drawable;->game_dashboard_screen_record_countdown_2:I

    goto :goto_0

    :cond_2
    sget p2, Lcom/android/systemui/R$drawable;->game_dashboard_screen_record_countdown_1:I

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenRecordButtonBackground(Z)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->accessibility_game_dashboard_shortcut_bar_stop_recording:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCountdownEnd()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setScreenRecordButtonDrawable()V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenRecordController:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_game_dashboard_screen_record_cancelled:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->onScreenRecordStop()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mSystemGestureExcludeUpdater:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->expanded_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget v0, Lcom/android/systemui/R$id;->reveal:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/RevealButton;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget v1, Lcom/android/systemui/R$id;->screenshot:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget v1, Lcom/android/systemui/R$id;->record:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget v1, Lcom/android/systemui/R$id;->fps:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mFpsView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget v1, Lcom/android/systemui/R$id;->entry_point:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mEntryPointButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    return-void
.end method

.method public onRecordingEnd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->accessibility_game_dashboard_screen_record_stopped:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->onScreenRecordStop()V

    return-void
.end method

.method public setEntryPointOnTouchListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mEntryPointButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mOnTouchListener:Lcom/google/android/systemui/gamedashboard/ShortcutBarView$ShortcutBarTouchController;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mEntryPointButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setEntryPointVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsEntryPointVisible:Z

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mEntryPointButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setExcludeBackRegionCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mExcludeBackRegionCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public setFps(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mFpsView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFpsVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_FPS:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mFpsView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->bounce(Z)V

    :cond_2
    return-void
.end method

.method public setNavBarButtonState(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mShiftForTransientBar:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->isOnTheRight()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mShiftForTransientBar:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->autoUndock(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBarMarginEnd:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mShiftForTransientBar:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDragging:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mBar:Lcom/google/android/systemui/gamedashboard/ShortcutBarContainer;

    sget-object v0, Landroid/widget/FrameLayout;->TRANSLATION_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsDragging:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->snapBarBackIfNecessary()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setRecordVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREEN_RECORD:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRecordButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->bounce(Z)V

    :cond_2
    iget-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->onScreenRecordButtonVisible()V

    :cond_3
    return-void
.end method

.method public setScreenshotVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mUiEventLogger:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_ENABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;->GAME_DASHBOARD_MENU_DISABLE_SCREENSHOT:Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;->log(Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger$GameDashboardEvent;)V

    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mScreenshotButton:Lcom/google/android/systemui/gamedashboard/ShortcutBarButton;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsAttached:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->bounce(Z)V

    :cond_2
    return-void
.end method

.method public shouldBeVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsScreenshotVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsRecordVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsFpsVisible:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mIsEntryPointVisible:Z

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

.method public slideIn()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->mRevealButton:Lcom/google/android/systemui/gamedashboard/RevealButton;

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/RevealButton;->slideIn()V

    return-void
.end method
