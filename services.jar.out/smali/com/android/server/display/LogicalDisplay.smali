.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplay$DisplayPhase;
    }
.end annotation


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field static final DISPLAY_PHASE_DISABLED:I = -0x1

.field static final DISPLAY_PHASE_ENABLED:I = 0x1

.field static final DISPLAY_PHASE_LAYOUT_TRANSITION:I = 0x0

.field private static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

.field private static final TAG:Ljava/lang/String; = "LogicalDisplay"


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

.field private mDisplayGroupId:I

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private final mDisplayPosition:Landroid/graphics/Point;

.field private mDisplayScalingDisabled:Z

.field private mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field private mHasContent:Z

.field private final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPendingFrameRateOverrideUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase:I

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorMode:I

.field private mRequestedMinimalPostProcessing:Z

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempFrameRateOverride:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempLayerStackRect:Landroid/graphics/Rect;

.field private mUserDisabledHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    new-instance v0, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    return-void
.end method

.method private static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method

.method private updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v7, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz v0, :cond_3

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_2

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v7, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public clearPendingFrameRateOverrideUids()V
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-void
.end method

.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p3, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_0
    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    :goto_1
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v7, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v6, v4, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v6, 0x0

    iget v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v8, 0x2

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    iget v6, v3, Landroid/view/DisplayInfo;->rotation:I

    :cond_2
    iget v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v7, v6

    rem-int/lit8 v7, v7, 0x4

    const/4 v6, 0x1

    if-eq v7, v6, :cond_3

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    :cond_3
    move v4, v6

    :cond_4
    if-eqz v4, :cond_5

    iget v9, v5, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_2

    :cond_5
    iget v9, v5, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_2
    if-eqz v4, :cond_6

    iget v10, v5, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_3

    :cond_6
    iget v10, v5, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_3
    invoke-static {v5}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v9, v12

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v10, v12

    iget v12, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v12, v13

    if-nez v12, :cond_9

    iget-boolean v12, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_7
    iget v12, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v12, v9

    iget v13, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v13, v10

    if-ge v12, v13, :cond_8

    move v12, v9

    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v13, v9

    iget v14, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/2addr v13, v14

    goto :goto_5

    :cond_8
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v10

    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/2addr v12, v13

    move v13, v10

    goto :goto_5

    :cond_9
    :goto_4
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_5
    sub-int v14, v10, v13

    div-int/2addr v14, v8

    sub-int v15, v9, v12

    div-int/2addr v15, v8

    iget-object v8, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v6, v15, v12

    move-object/from16 v16, v3

    add-int v3, v14, v13

    invoke-virtual {v8, v15, v14, v6, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v11, Landroid/graphics/Rect;->left:I

    iget v8, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    if-nez v7, :cond_a

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_a
    const/4 v3, 0x1

    if-ne v7, v3, :cond_b

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v8, v8

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_b
    const/4 v3, 0x2

    if-ne v7, v3, :cond_c

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v6, v6

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v8, v8

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_c
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v6, v6

    iget v8, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    :goto_6
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v8}, Landroid/graphics/Point;->set(II)V

    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v7, v3, v6}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrameRateOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object v0
.end method

.method public getDisplayIdLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v1, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method getDisplayPosition()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPendingFrameRateOverrideUids()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPhase()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    return v0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return v0
.end method

.method public hasContentLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isDisplayScalingDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isValidLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayOffsetsLocked(II)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return-void
.end method

.method public setHasContentLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return-void
.end method

.method public setPhase(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    return-object v0
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return-void
.end method

.method public setUserDisabledHdrTypes([I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_0
    return-void
.end method

.method public swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateDisplayGroupIdLocked(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput p1, v0, Landroid/view/DisplayInfo;->displayGroupId:I

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_0
    return-void
.end method

.method public updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayDeviceRepository;->containsLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v3, v2, Landroid/view/DisplayInfo;->layerStack:I

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_2
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_3
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    :cond_4
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    :cond_5
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_6
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_7
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_8
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_9
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_a
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    :cond_b
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v8, v7, Landroid/view/DisplayInfo;->type:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v8, v7, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v8, v7, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->appHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v7, Landroid/view/DisplayInfo;->rotation:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->modeId:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v8, v7, Landroid/view/DisplayInfo;->defaultModeId:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/view/Display$Mode;

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v8, v7, Landroid/view/DisplayInfo;->colorMode:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v9, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    iput-object v8, v7, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v8, v7, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v8, v7, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v8, :cond_d

    iget-boolean v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v8, :cond_c

    goto :goto_0

    :cond_c
    move v8, v3

    goto :goto_1

    :cond_d
    :goto_0
    move v8, v4

    :goto_1
    iput-boolean v8, v7, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iput v8, v7, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v8, v7, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v8, v7, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v8, v7, Landroid/view/DisplayInfo;->state:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v7, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v7, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v8, v7, Landroid/view/DisplayInfo;->ownerUid:I

    iget-object v7, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v8, v7, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_e

    move v3, v4

    :cond_e
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_f

    move-object v7, v1

    goto :goto_2

    :cond_f
    iget-object v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_2
    iput-object v7, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v7, v4, Landroid/view/DisplayInfo;->displayId:I

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v7, v4, Landroid/view/DisplayInfo;->displayGroupId:I

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplay;->updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v7, v4, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v7, v4, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v7, v4, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v7, v4, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v4, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    :cond_10
    return-void
.end method
