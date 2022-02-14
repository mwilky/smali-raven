.class Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;
.super Ljava/lang/Object;
.source "WindowMagnificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/WindowMagnificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowMagnifier"
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mDisplayId:I

.field private mEnabled:Z

.field private mScale:F

.field private final mSourceBounds:Landroid/graphics/Rect;

.field private final mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;


# direct methods
.method constructor <init>(ILcom/android/server/accessibility/magnification/WindowMagnificationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    return-void
.end method


# virtual methods
.method disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$1000(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method enableWindowMagnificationInternal(FFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {p1, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v4, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    move v5, v0

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$900(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFFFLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return v1

    :cond_1
    return v1
.end method

.method getCenterX()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0
.end method

.method getCenterY()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_0
    return v0
.end method

.method getScale()F
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    return v0
.end method

.method isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return v0
.end method

.method move(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$1200(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IFF)Z

    return-void
.end method

.method public onSourceBoundsChanged(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method pointersInWindow(Landroid/view/MotionEvent;)I
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    return-void
.end method

.method setMagnifierLocation(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method setScale(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mWindowMagnificationManager:Lcom/android/server/accessibility/magnification/WindowMagnificationManager;

    iget v2, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mDisplayId:I

    invoke-static {v1, v2, p1}, Lcom/android/server/accessibility/magnification/WindowMagnificationManager;->access$1100(Lcom/android/server/accessibility/magnification/WindowMagnificationManager;IF)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationManager$WindowMagnifier;->mScale:F

    :cond_1
    return-void
.end method
