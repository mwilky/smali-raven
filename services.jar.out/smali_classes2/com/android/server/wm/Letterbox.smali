.class public Lcom/android/server/wm/Letterbox;
.super Ljava/lang/Object;
.source "Letterbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Letterbox$LetterboxSurface;,
        Lcom/android/server/wm/Letterbox$InputInterceptor;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final ZERO_POINT:Landroid/graphics/Point;


# instance fields
.field private final mAreCornersRounded:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mBehind:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mBlurRadiusSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mColorSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private final mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mInner:Landroid/graphics/Rect;

.field private final mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mOuter:Landroid/graphics/Rect;

.field private final mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mSurfaceControlFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

.field private final mTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    sput-object v0, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/Color;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v1, "top"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v1, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v2, "left"

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v2, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v3, "bottom"

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v3, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v4, "right"

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    new-instance v4, Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const-string v5, "behind"

    invoke-direct {v4, p0, v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mBehind:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/server/wm/Letterbox$LetterboxSurface;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    iput-object v4, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iput-object p1, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/server/wm/Letterbox;->mAreCornersRounded:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/server/wm/Letterbox;->mColorSupplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    iput-object p6, p0, Lcom/android/server/wm/Letterbox;->mBlurRadiusSupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Lcom/android/server/wm/Letterbox;->mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaceControlFactory:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mTransactionFactory:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mColorSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mHasWallpaperBackgroundSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mDarkScrimAlphaSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBlurRadiusSupplier:Ljava/util/function/Supplier;

    return-object v0
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mAreCornersRounded:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBehind:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBehind:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    :goto_1
    return-void
.end method

.method attachInput(Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->attachInput(Lcom/android/server/wm/WindowState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBehind:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->remove()V

    return-void
.end method

.method getInnerFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v4}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public hide()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/Letterbox;->ZERO_POINT:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    return-void
.end method

.method public layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mOuter:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mInner:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/server/wm/Letterbox;->mTop:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget-object v9, v0, Lcom/android/server/wm/Letterbox;->mLeft:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v14, p3

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget-object v3, v0, Lcom/android/server/wm/Letterbox;->mBottom:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget-object v8, v0, Lcom/android/server/wm/Letterbox;->mRight:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    iget-object v13, v0, Lcom/android/server/wm/Letterbox;->mBehind:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    iget v14, v2, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, p3

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->layout(IIIILandroid/graphics/Point;)V

    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v6

    if-eqz v6, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mAreCornersRounded:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mBehind:Lcom/android/server/wm/Letterbox$LetterboxSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    return v2
.end method

.method notIntersectsOrFullyContains(Landroid/graphics/Rect;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_3

    aget-object v7, v2, v5

    invoke-static {v7}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$000(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v8, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_2

    return v6

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    add-int v2, v0, v1

    iget-object v3, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v3, v3

    if-ne v2, v3, :cond_4

    move v4, v6

    :cond_4
    return v4
.end method

.method onMovedToDisplay(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/Letterbox;->mSurfaces:[Lcom/android/server/wm/Letterbox$LetterboxSurface;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$100(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->access$100(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Letterbox$InputInterceptor;->mWindowHandle:Landroid/view/InputWindowHandle;

    iput p1, v4, Landroid/view/InputWindowHandle;->displayId:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
