.class Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatDisplayInsets"
.end annotation


# instance fields
.field private final mHeight:I

.field final mIsFloating:Z

.field final mIsInFixedOrientationLetterbox:Z

.field final mNonDecorInsets:[Landroid/graphics/Rect;

.field final mOriginalRotation:I

.field final mStableInsets:[Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-array v3, v2, [Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOriginalRotation:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object v5, v7, v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz p3, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    if-eqz v6, :cond_3

    move-object/from16 v6, p3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    :goto_2
    nop

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    :goto_3
    nop

    invoke-static {v6, v7}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Point;->x:I

    iput v9, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v9, v8, Landroid/graphics/Point;->y:I

    iput v9, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_4

    :cond_6
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v15

    const/4 v10, 0x0

    move v14, v10

    :goto_5
    if-ge v14, v2, :cond_c

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v14

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v14

    if-eq v14, v5, :cond_8

    const/4 v10, 0x3

    if-ne v14, v10, :cond_7

    goto :goto_6

    :cond_7
    move v10, v4

    goto :goto_7

    :cond_8
    :goto_6
    move v10, v5

    :goto_7
    move/from16 v16, v10

    if-eqz v16, :cond_9

    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_8

    :cond_9
    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_8
    move v13, v10

    if-eqz v16, :cond_a

    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_9

    :cond_a
    iget v10, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_9
    move v12, v10

    invoke-virtual {v1, v14}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v17

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v18, v10, v14

    move-object v10, v15

    move v11, v14

    move/from16 v19, v12

    move v12, v13

    move v2, v13

    move/from16 v13, v19

    move v4, v14

    move-object/from16 v14, v17

    move-object v5, v15

    move-object/from16 v15, v18

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v5, v10, v4}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    if-nez v9, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v7, v4, v9}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    move/from16 v11, v19

    invoke-static {v9, v2, v11, v10}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-static {v9, v2, v11, v10}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    :goto_a
    add-int/lit8 v14, v4, 0x1

    move-object v15, v5

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method private static getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    if-eqz v0, :cond_2

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    return-object v3
.end method

.method private static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 3

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method getBoundsByRotation(Landroid/graphics/Rect;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    :goto_1
    if-eqz v0, :cond_3

    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    :goto_2
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 6

    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-le v0, v1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    move v2, v4

    if-eqz v2, :cond_5

    if-eqz p6, :cond_5

    if-eqz p5, :cond_5

    const/4 v3, 0x2

    if-ne p4, v3, :cond_4

    int-to-float v3, v0

    int-to-float v4, v0

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    :cond_4
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v1

    int-to-float v4, v1

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    :goto_3
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityRecord;->access$800(II)I

    move-result v3

    invoke-virtual {p2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_5
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, p3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    :cond_6
    const/4 v3, -0x1

    if-eq p3, v3, :cond_7

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, p3

    invoke-static {p1, p2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_7
    :goto_4
    nop

    :goto_5
    return-void
.end method

.method getFrameByOrientation(Landroid/graphics/Rect;I)V
    .locals 6

    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eqz v3, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
