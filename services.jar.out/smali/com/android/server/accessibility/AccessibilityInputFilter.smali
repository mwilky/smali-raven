.class Lcom/android/server/accessibility/AccessibilityInputFilter;
.super Landroid/view/InputFilter;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;,
        Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final FEATURES_AFFECTING_MOTION_EVENTS:I = 0x3db

.field static final FLAG_FEATURE_AUTOCLICK:I = 0x8

.field static final FLAG_FEATURE_CONTROL_SCREEN_MAGNIFIER:I = 0x20

.field static final FLAG_FEATURE_FILTER_KEY_EVENTS:I = 0x4

.field static final FLAG_FEATURE_INJECT_MOTION_EVENTS:I = 0x10

.field static final FLAG_FEATURE_SCREEN_MAGNIFIER:I = 0x1

.field static final FLAG_FEATURE_TOUCH_EXPLORATION:I = 0x2

.field static final FLAG_FEATURE_TRIGGERED_SCREEN_MAGNIFIER:I = 0x40

.field static final FLAG_REQUEST_2_FINGER_PASSTHROUGH:I = 0x200

.field static final FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x100

.field static final FLAG_SEND_MOTION_EVENTS:I = 0x400

.field static final FLAG_SERVICE_HANDLES_DOUBLE_TAP:I = 0x80

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

.field private final mContext:Landroid/content/Context;

.field private mEnabledFeatures:I

.field private final mEventHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalled:Z

.field private mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

.field private mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

.field private final mMagnificationGestureHandler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mMotionEventInjectors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/MotionEventInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final mMouseStreamStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/os/PowerManager;

.field private final mTouchExplorer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/gestures/TouchExplorer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTouchScreenStreamStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/accessibility/AccessibilityManagerService;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/EventStreamTransformation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    return-void
.end method

.method private addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    :goto_0
    move-object v0, p2

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private clearEventStreamHandler(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method private createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v11, v5

    goto :goto_0

    :cond_0
    move v11, v4

    :goto_0
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    move v12, v5

    goto :goto_1

    :cond_1
    move v12, v4

    :goto_1
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    const/16 v2, 0x7f7

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getWindowMagnificationMgr()Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    move-result-object v8

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v9

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v10

    move-object v6, v4

    move-object v7, v2

    move/from16 v13, p1

    invoke-direct/range {v6 .. v13}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationManager;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZI)V

    move-object v2, v4

    goto :goto_2

    :cond_2
    const/16 v2, 0x7eb

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v15

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v16

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/magnification/MagnificationController;

    move-result-object v17

    new-instance v5, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;

    iget v6, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    invoke-direct {v5, v1, v6}, Lcom/android/server/accessibility/magnification/WindowMagnificationPromptController;-><init>(Landroid/content/Context;I)V

    move-object v13, v4

    move-object v14, v2

    move/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v5

    move/from16 v21, p1

    invoke-direct/range {v13 .. v21}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;Lcom/android/server/accessibility/AccessibilityTraceManager;Lcom/android/server/accessibility/magnification/MagnificationGestureHandler$Callback;ZZLcom/android/server/accessibility/magnification/WindowMagnificationPromptController;I)V

    move-object v2, v4

    :goto_2
    return-object v2
.end method

.method private disableDisplayIndependentFeatures()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AutoclickController;->onDestroy()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/accessibility/KeyboardInterceptor;->onDestroy()V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    :cond_1
    return-void
.end method

.method private disableFeatures()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableDisplayIndependentFeatures()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    return-void
.end method

.method private disableFeaturesForDisplay(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->onDestroy()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDestroy()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy()V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    return-void
.end method

.method private enableDisplayIndependentFeatures()V
    .locals 3

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->setMotionEventInjectors(Landroid/util/SparseArray;)V

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/accessibility/KeyboardInterceptor;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/KeyboardInterceptor;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/policy/WindowManagerPolicy;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardInterceptor:Lcom/android/server/accessibility/KeyboardInterceptor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_1
    return-void
.end method

.method private enableFeatures()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetAllStreamState()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableDisplayIndependentFeatures()V

    return-void
.end method

.method private enableFeaturesForDisplay(Landroid/view/Display;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/accessibility/AutoclickController;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/accessibility/AutoclickController;-><init>(Landroid/content/Context;ILcom/android/server/accessibility/AccessibilityTraceManager;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAutoclickController:Lcom/android/server/accessibility/AutoclickController;

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    :cond_1
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    new-instance v2, Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v2, v0, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x80

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceHandlesDoubleTap(Z)V

    :cond_2
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setMultiFingerGesturesEnabled(Z)V

    :cond_3
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTwoFingerPassthroughEnabled(Z)V

    :cond_4
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_5

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setSendMotionEventsEnabled(Z)V

    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_7

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_7

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_8

    :cond_7
    nop

    invoke-direct {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_9

    new-instance v2, Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/accessibility/MotionEventInjector;-><init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->addFirstEventHandler(ILcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMotionEventInjectors:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
    .locals 3

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v0

    const/16 v1, 0x1002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v1

    :cond_1
    const/16 v1, 0x2002

    invoke-virtual {p1, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;

    invoke-direct {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v1

    :cond_3
    goto :goto_0

    :cond_4
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_6

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    return-object v0

    :cond_6
    :goto_0
    nop

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mPm:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->isDisplayIdValid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private isDisplayIdValid(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V
    .locals 2

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method private processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessScroll()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-super {p0, p2, p3}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->handleMotionEvent(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne v0, p2, :cond_1

    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    if-ne v1, p2, :cond_2

    invoke-interface {v0, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    invoke-interface {p2}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "A11yInputFilter Info : "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v3, :cond_7

    const-string v4, "Enabled features of Display ["

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v4, "] = "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v4, Ljava/util/StringJoiner;

    const-string v5, ","

    const-string v6, "["

    const-string v7, "]"

    invoke-direct {v4, v5, v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v3, :cond_6

    instance-of v5, v3, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v5, :cond_1

    const-string v5, "MagnificationGesture"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_1
    instance-of v5, v3, Lcom/android/server/accessibility/KeyboardInterceptor;

    if-eqz v5, :cond_2

    const-string v5, "KeyboardInterceptor"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_2
    instance-of v5, v3, Lcom/android/server/accessibility/gestures/TouchExplorer;

    if-eqz v5, :cond_3

    const-string v5, "TouchExplorer"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_3
    instance-of v5, v3, Lcom/android/server/accessibility/AutoclickController;

    if-eqz v5, :cond_4

    const-string v5, "AutoclickController"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :cond_4
    instance-of v5, v3, Lcom/android/server/accessibility/MotionEventInjector;

    if-eqz v5, :cond_5

    const-string v5, "MotionEventInjector"

    invoke-virtual {v4, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_5
    :goto_2
    invoke-interface {v3}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v3

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public getNext()Lcom/android/server/accessibility/EventStreamTransformation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method notifyAccessibilityButtonClicked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->notifyShortcutTriggered()V

    :cond_0
    return-void
.end method

.method notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method onDisplayAdded(Landroid/view/Display;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeaturesForDisplay(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method onDisplayRemoved(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeaturesForDisplay(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    :cond_0
    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    const-wide/16 v1, 0x1000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTraceManager()Lcom/android/server/accessibility/AccessibilityTraceManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/accessibility/AccessibilityInputFilter;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".onInputEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->getEventStreamState(Landroid/view/InputEvent;)Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/InputEvent;->getDisplayId()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p2

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventStreamHandler(II)V

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->updateInputSource(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2, v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->clearEventStreamHandler(II)V

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->inputSourceValid()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    return-void

    :cond_5
    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    and-int/lit16 v3, v3, 0x3db

    if-eqz v3, :cond_6

    move-object v3, p1

    check-cast v3, Landroid/view/MotionEvent;

    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processMotionEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/MotionEvent;I)V

    return-void

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V

    goto :goto_0

    :cond_7
    instance-of v3, p1, Landroid/view/KeyEvent;

    if-eqz v3, :cond_8

    move-object v3, p1

    check-cast v3, Landroid/view/KeyEvent;

    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->processKeyEvent(Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;Landroid/view/KeyEvent;I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onInstalled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    invoke-super {p0}, Landroid/view/InputFilter;->onInstalled()V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V

    return-void
.end method

.method public onUninstalled()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    invoke-super {p0}, Landroid/view/InputFilter;->onUninstalled()V

    return-void
.end method

.method public refreshMagnificationMode(Landroid/view/Display;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->getMode()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationMode(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->onDestroy()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->createMagnificationGestureHandler(ILandroid/content/Context;)Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->switchEventStreamTransformation(ILcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/EventStreamTransformation;)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMagnificationGestureHandler:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method resetAllStreamState()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->resetStreamStateForDisplay(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mKeyboardStreamState:Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    :cond_1
    return-void
.end method

.method resetStreamStateForDisplay(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchScreenStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mMouseStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method public setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setGestureDetectionPassthroughRegion(Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    return-void
.end method

.method public setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setTouchExplorationPassthroughRegion(Landroid/graphics/Region;)V

    :cond_0
    return-void
.end method

.method setUserAndEnabledFeatures(II)V
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->disableFeatures()V

    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mUserId:I

    iput p2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEnabledFeatures:I

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mInstalled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->enableFeatures()V

    :cond_2
    return-void
.end method
