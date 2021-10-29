.class public Lcom/google/android/systemui/assist/uihints/NgaUiController;
.super Ljava/lang/Object;
.source "NgaUiController.java"

# interfaces
.implements Lcom/android/systemui/assist/AssistManager$UiController;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field private static final VERBOSE:Z

.field private static final mProgressInterpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field private final mAssistManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

.field private final mAssistantWarmer:Lcom/google/android/systemui/assist/uihints/AssistantWarmer;

.field private final mColorChangeHandler:Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;

.field private mColorMonitoringStart:J

.field private final mContext:Landroid/content/Context;

.field private final mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

.field private final mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

.field private final mGlowController:Lcom/google/android/systemui/assist/uihints/GlowController;

.field private mHasDarkBackground:Z

.field private final mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

.field private mInvocationAnimator:Landroid/animation/ValueAnimator;

.field private mInvocationInProgress:Z

.field private mInvocationLightsView:Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

.field private mIsMonitoringColor:Z

.field private mLastInvocationProgress:F

.field private mLastInvocationStartTime:J

.field private final mLightnessProvider:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

.field private final mNavBarFader:Lcom/google/android/systemui/assist/uihints/NavBarFader;

.field private mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

.field private mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

.field private final mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

.field private mShouldKeepWakeLock:Z

.field private mShowingAssistUi:Z

.field private final mTimeoutManager:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

.field private final mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

.field private final mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUiHost:Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$2zaXlY5XgilNtjoQPqUW5lGo1IE(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$onComputeInternalInsets$9(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$45RtCEDLi5_Dt1yklTHr30t_-C8(Lcom/google/android/systemui/assist/uihints/NgaUiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$onDozingChanged$11(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$8LJ_WDhZ141B0iIvPdfYwHNB-vo(Lcom/google/android/systemui/assist/uihints/NgaUiController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$new$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CkC2WeHrAukjxrD87JZ3eTfSFCo(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$onComputeInternalInsets$7(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KodYXPCspmD4SYgbiG20hGEmrOM(Lcom/google/android/systemui/assist/uihints/NgaUiController;ILandroid/view/animation/OvershootInterpolator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$completeInvocation$6(ILandroid/view/animation/OvershootInterpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Lrz4iuoEE933S055jy4iw4AZOIs(Lcom/google/android/systemui/assist/uihints/NgaUiController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$new$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$O9mmqR3nQRKZbXAsNf6UiFjNn0Y(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->closeNgaUi()V

    return-void
.end method

.method public static synthetic $r8$lambda$PT5hvzgOtuXal-MsD2C1AR553hk(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$gFCErpjSYph5DcIirnIPRR0pOnc(Lcom/google/android/systemui/assist/uihints/NgaUiController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$new$0(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$hmasSe9HfPg0eFrQuFJc1UMeYmY(Landroid/view/animation/OvershootInterpolator;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$completeInvocation$5(Landroid/view/animation/OvershootInterpolator;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$t_AXpbBw_PtPBqrQdvmQbvKF20A(Lcom/google/android/systemui/assist/uihints/NgaUiController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$new$2(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yLbYExojD8rBpMzdfa0nhSUhtIM(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$onComputeInternalInsets$10(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zxOgYepOhSe24qkpF9rY42Svh6s(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->lambda$onComputeInternalInsets$8(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f547ae1    # 0.83f

    const/4 v2, 0x0

    const v3, 0x3f570a3d    # 0.84f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/assist/uihints/TimeoutManager;Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;Lcom/google/android/systemui/assist/uihints/OverlayUiHost;Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;Lcom/google/android/systemui/assist/uihints/GlowController;Lcom/google/android/systemui/assist/uihints/ScrimController;Lcom/google/android/systemui/assist/uihints/TranscriptionController;Lcom/google/android/systemui/assist/uihints/IconController;Lcom/google/android/systemui/assist/uihints/LightnessProvider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Ldagger/Lazy;Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;Lcom/google/android/systemui/assist/uihints/AssistantWarmer;Lcom/google/android/systemui/assist/uihints/NavBarFader;Lcom/android/systemui/assist/AssistLogger;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/assist/uihints/TimeoutManager;",
            "Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            "Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;",
            "Lcom/google/android/systemui/assist/uihints/OverlayUiHost;",
            "Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;",
            "Lcom/google/android/systemui/assist/uihints/GlowController;",
            "Lcom/google/android/systemui/assist/uihints/ScrimController;",
            "Lcom/google/android/systemui/assist/uihints/TranscriptionController;",
            "Lcom/google/android/systemui/assist/uihints/IconController;",
            "Lcom/google/android/systemui/assist/uihints/LightnessProvider;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;",
            "Lcom/google/android/systemui/assist/uihints/AssistantWarmer;",
            "Lcom/google/android/systemui/assist/uihints/NavBarFader;",
            "Lcom/android/systemui/assist/AssistLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v11, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    iput-boolean v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIsMonitoringColor:Z

    iput-boolean v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    iput-boolean v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    iput-boolean v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShouldKeepWakeLock:Z

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationStartTime:J

    const/4 v14, 0x0

    iput v14, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationProgress:F

    iput-wide v12, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mContext:Landroid/content/Context;

    move-object/from16 v12, p18

    iput-object v12, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    iput-object v5, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorChangeHandler:Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;

    invoke-virtual {v5, v11}, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->onColorChange(Z)V

    iput-object v2, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTimeoutManager:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    iput-object v3, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    iput-object v4, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHost:Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

    iput-object v6, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    iput-object v7, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mGlowController:Lcom/google/android/systemui/assist/uihints/GlowController;

    iput-object v8, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    iput-object v9, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    iput-object v10, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLightnessProvider:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistManager:Ldagger/Lazy;

    move-object/from16 v11, p15

    iput-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    move-object/from16 v11, p16

    iput-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistantWarmer:Lcom/google/android/systemui/assist/uihints/AssistantWarmer;

    move-object/from16 v11, p17

    iput-object v11, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mNavBarFader:Lcom/google/android/systemui/assist/uihints/NavBarFader;

    new-instance v11, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda2;

    invoke-direct {v11, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    invoke-virtual {v10, v11}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->setListener(Lcom/google/android/systemui/assist/uihints/LightnessListener;)V

    new-instance v10, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    invoke-virtual {v3, v10}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->registerSysUiIsNgaUiChangeListener(Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler$SysUiIsNgaUiChangeListener;)V

    new-instance v3, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    invoke-virtual {v4, v3}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->setFallback(Ljava/lang/Runnable;)V

    new-instance v3, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    invoke-virtual {v6, v3}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->setModeChangeThrottler(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController$ModeChangeThrottler;)V

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v3, 0x3000000a

    const-string v4, "Assist (NGA)"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    invoke-virtual {v7, v1}, Lcom/google/android/systemui/assist/uihints/GlowController;->setVisibilityListener(Lcom/google/android/systemui/assist/uihints/VisibilityListener;)V

    invoke-virtual {v8, v1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setVisibilityListener(Lcom/google/android/systemui/assist/uihints/VisibilityListener;)V

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->getParent()Landroid/view/ViewGroup;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$id;->invocation_lights:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    iput-object v3, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationLightsView:Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->setGoogleAssistant(Z)V

    invoke-virtual/range {p7 .. p8}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->addListener(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V

    invoke-virtual {v6, v8}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->addListener(Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsListener;)V

    invoke-virtual {v9, v8}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setListener(Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceListener;)V

    sget v3, Lcom/android/systemui/R$id;->prompt:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/PromptView;

    iput-object v1, v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->dispatchHasDarkBackground()V

    move-object/from16 v1, p13

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    new-instance v1, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    new-instance v0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->setTimeoutCallback(Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/uihints/NgaUiController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/systemui/assist/uihints/NgaUiController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/NgaUiController;)Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/uihints/NgaUiController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->resetInvocationProgress()V

    return-void
.end method

.method private approximateInverse(Ljava/lang/Float;Ljava/util/function/Function;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Float;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/high16 v0, 0x43480000    # 200.0f

    float-to-int v0, v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    const v2, 0x3ba3d70a    # 0.005f

    if-gez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, -0x1

    :cond_1
    int-to-float p0, p0

    mul-float/2addr p0, v2

    return p0
.end method

.method private closeNgaUi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->hide()V

    return-void
.end method

.method private completeInvocation(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistantPresenceHandler:Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;->isSysUiNgaUi()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->setProgress(IF)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->resetInvocationProgress()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTouchInsideHandler:Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;->maybeSetGuarded()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTimeoutManager:Lcom/google/android/systemui/assist/uihints/TimeoutManager;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->resetTimeout()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/PromptView;->disable()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->getVelocity()F

    move-result v0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    neg-float v0, v0

    const v1, 0x3fb9999a    # 1.45f

    div-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v2, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    :goto_0
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    new-instance v1, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda13;-><init>(Landroid/view/animation/OvershootInterpolator;)V

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationProgress:F

    invoke-direct {p0, p1, v2}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->getAnimationProgress(IF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->approximateInverse(Ljava/lang/Float;Ljava/util/function/Function;)F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;ILandroid/view/animation/OvershootInterpolator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$1;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private dispatchHasDarkBackground()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setHasDarkBackground(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/uihints/IconController;->setHasDarkBackground(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

    iget-boolean p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/assist/uihints/PromptView;->setHasDarkBackground(Z)V

    return-void
.end method

.method private getAnimationProgress(IF)F
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const p0, 0x3f733333    # 0.95f

    mul-float/2addr p2, p0

    return p2

    :cond_0
    sget-object p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mProgressInterpolator:Landroid/view/animation/PathInterpolator;

    const p1, 0x3f4ccccd    # 0.8f

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private static synthetic lambda$completeInvocation$5(Landroid/view/animation/OvershootInterpolator;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$completeInvocation$6(ILandroid/view/animation/OvershootInterpolator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->setProgress(IF)V

    return-void
.end method

.method private synthetic lambda$new$0(F)V
    .locals 7

    sget-boolean v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    iget-wide v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    sub-long/2addr v1, v5

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got lightness update ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ") after "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NgaUiController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/uihints/IconController;->setHasAccurateLuma(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mGlowController:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/GlowController;->setMedianLightness(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setHasMedianLightness(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setHasAccurateBackground(Z)V

    const v0, 0x3ecccccd    # 0.4f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->setHasDarkBackground(Z)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void
.end method

.method private synthetic lambda$new$1(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->hide()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    if-nez v0, :cond_1

    const-string v0, "FULL_LISTENING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->onInvocationProgress(IF)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    if-eqz v0, :cond_0

    const-string v0, "NgaUiController"

    const-string v1, "Timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    sget-object v1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_TIMEOUT_DISMISS:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->closeNgaUi()V

    new-instance p0, Landroid/metrics/LogMaker;

    const/16 v0, 0x6b4

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onComputeInternalInsets$10(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Region;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onComputeInternalInsets$7(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private static synthetic lambda$onComputeInternalInsets$8(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private static synthetic lambda$onComputeInternalInsets$9(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private synthetic lambda$onDozingChanged$11(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->onDozingChanged(Z)V

    return-void
.end method

.method private logInvocationProgressMetrics(IFZ)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    const-string v1, "NgaUiController"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invocation complete: type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x6b4

    const/4 v2, 0x0

    if-nez p3, :cond_2

    cmpl-float v3, p2, v2

    if-lez v3, :cond_2

    sget-boolean v3, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invocation started: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5, v5}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-direct {v3, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistManager:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v4, p1}, Lcom/android/systemui/assist/AssistManager;->toLoggingSubType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    if-eqz p3, :cond_5

    cmpl-float p2, p2, v2

    if-nez p2, :cond_5

    sget-boolean p2, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invocation cancelled: type="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    sget-object p1, Lcom/android/systemui/assist/AssistantSessionEvent;->ASSISTANT_SESSION_INVOCATION_CANCELLED:Lcom/android/systemui/assist/AssistantSessionEvent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantSessionEvent(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    new-instance p0, Landroid/metrics/LogMaker;

    invoke-direct {p0, v0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_5
    return-void
.end method

.method private refresh()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->updateShowingAssistUi()V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->updateShowingNavBar()V

    return-void
.end method

.method private resetInvocationProgress()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationLightsView:Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    invoke-virtual {v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->hide()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationProgress:F

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setInvocationProgress(F)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void
.end method

.method private setColorMonitoringState(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIsMonitoringColor:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->getSurfaceControllerHandle()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIsMonitoringColor:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getRotatedHeight(Landroid/content/Context;)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->transcription_space_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x41a00000    # 20.0f

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->convertSpToPx(FLandroid/content/Context;)I

    move-result v1

    sub-int/2addr p1, v1

    const/high16 v1, 0x43200000    # 160.0f

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->convertDpToPx(FLandroid/content/Context;)I

    move-result v1

    sub-int v1, p1, v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getRotatedWidth(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, v0, v1, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorMonitoringStart:J

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLightnessProvider:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->getSurfaceControllerHandle()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, v0, v2, p0}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->enableColorMonitoring(ZLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLightnessProvider:Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/systemui/assist/uihints/LightnessProvider;->enableColorMonitoring(ZLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/assist/uihints/IconController;->setHasAccurateLuma(Z)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->onLightnessInvalidated()V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->setHasAccurateBackground(Z)V

    :goto_0
    return-void
.end method

.method private setHasDarkBackground(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    const-string v1, "dark"

    const-string v2, "light"

    const-string v3, "NgaUiController"

    if-ne v0, p1, :cond_2

    sget-boolean p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not switching; already "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mColorChangeHandler:Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;->onColorChange(Z)V

    sget-boolean p1, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switching to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mHasDarkBackground:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->dispatchHasDarkBackground()V

    return-void
.end method

.method private setProgress(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationLightsView:Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;

    invoke-virtual {v0, p2}, Lcom/google/android/systemui/assist/uihints/AssistantInvocationLightsView;->onInvocationProgress(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mGlowController:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-virtual {v0, p2}, Lcom/google/android/systemui/assist/uihints/GlowController;->setInvocationProgress(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v0, p2}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setInvocationProgress(F)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/systemui/assist/uihints/PromptView;->onInvocationProgress(IF)V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void
.end method

.method private updateShowingAssistUi()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mGlowController:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/GlowController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/ScrimController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/IconController;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/IconController;->isRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->setColorMonitoringState(Z)V

    iget-boolean v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    if-eq v2, v1, :cond_5

    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHost:Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->setAssistState(ZZ)V

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHost:Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->getParent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHost:Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;->getParent()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShouldKeepWakeLock:Z

    if-eq v1, v0, :cond_7

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShouldKeepWakeLock:Z

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_3

    :cond_6
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateShowingNavBar()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/systemui/assist/uihints/edgelights/mode/Gone;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mNavBarFader:Lcom/google/android/systemui/assist/uihints/NavBarFader;

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/NavBarFader;->onVisibleRequest(Z)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-virtual {v1, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->onClear(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->setGone()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPendingEdgeLightsModeChange:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/PromptView;->disable()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/IconController;->onHideKeyboard()V

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/IconController;->onHideZerostate()V

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mIconController:Lcom/google/android/systemui/assist/uihints/IconController;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/IconController;->getTouchActionRegion()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda10;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;

    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/edgelights/mode/FullListening;->isFakeForHalfListening()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mGlowController:Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/GlowController;->getTouchInsideRegion()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda12;

    invoke-direct {v3, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda12;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v2}, Lcom/google/android/systemui/assist/uihints/ScrimController;->getTouchInsideRegion()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda9;

    invoke-direct {v3, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda9;-><init>(Landroid/graphics/Region;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda11;-><init>(Landroid/graphics/Region;)V

    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-virtual {v3}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchInsideRegion()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mTranscriptionController:Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;->getTouchActionRegion()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mScrimController:Lcom/google/android/systemui/assist/uihints/ScrimController;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/ScrimController;->setIsDozing(Z)V

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mShowingAssistUi:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/systemui/assist/uihints/NgaUiController;)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onGestureCompletion(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->preventsInvocations()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean p1, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignoring invocation; mode is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NgaUiController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->setVelocity(F)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->completeInvocation(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->logInvocationProgressMetrics(IFZ)V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "NgaUiController"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Already animating; ignoring invocation progress"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;->preventsInvocations()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean p1, Lcom/google/android/systemui/assist/uihints/NgaUiController;->VERBOSE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignoring invocation; mode is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mEdgeLightsController:Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsController;->getMode()Lcom/google/android/systemui/assist/uihints/edgelights/EdgeLightsView$Mode;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p2, v1

    const/4 v2, 0x0

    if-gez v1, :cond_7

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationProgress:F

    if-nez v0, :cond_3

    cmpl-float v3, p2, v2

    if-lez v3, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationStartTime:J

    :cond_3
    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    if-gez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationInProgress:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/PromptView;->disable()V

    goto :goto_1

    :cond_5
    const v1, 0x3f666666    # 0.9f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mLastInvocationStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mPromptView:Lcom/google/android/systemui/assist/uihints/PromptView;

    invoke-virtual {v1}, Lcom/google/android/systemui/assist/uihints/PromptView;->enable()V

    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->getAnimationProgress(IF)F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->setProgress(IF)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mInvocationAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mFlingVelocity:Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;->setVelocity(F)V

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->completeInvocation(I)V

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController;->mAssistantWarmer:Lcom/google/android/systemui/assist/uihints/AssistantWarmer;

    invoke-virtual {v1, p2}, Lcom/google/android/systemui/assist/uihints/AssistantWarmer;->onInvocationProgress(F)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->logInvocationProgressMetrics(IFZ)V

    return-void
.end method

.method onUiMessageReceived()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/NgaUiController;->refresh()V

    return-void
.end method
