.class public Lcom/android/server/wm/BlackFrame;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BlackFrame$BlackSurface;
    }
.end annotation


# instance fields
.field private final mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

.field private final mInnerRect:Landroid/graphics/Rect;

.field private final mOuterRect:Landroid/graphics/Rect;

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
.method public constructor <init>(Ljava/util/function/Supplier;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Landroid/graphics/Rect;ILcom/android/server/wm/DisplayContent;ZLandroid/view/SurfaceControl;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "I",
            "Lcom/android/server/wm/DisplayContent;",
            "Z",
            "Landroid/view/SurfaceControl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/wm/BlackFrame$BlackSurface;

    iput-object v0, v1, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    const/4 v4, 0x0

    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v1, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v1, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    :try_start_0
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_0

    const/4 v6, 0x0

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v3, Landroid/graphics/Rect;->right:I

    iget v13, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6

    :cond_0
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_1

    const/4 v6, 0x1

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6

    :cond_1
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_2

    const/4 v6, 0x2

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v3, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6

    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_3

    const/4 v6, 0x3

    new-instance v16, Lcom/android/server/wm/BlackFrame$BlackSurface;

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v7, v16

    move-object/from16 v8, p2

    move/from16 v9, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p8

    invoke-direct/range {v7 .. v15}, Lcom/android/server/wm/BlackFrame$BlackSurface;-><init>(Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl;)V

    aput-object v16, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v0, 0x1

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/BlackFrame;->kill()V

    :cond_5
    throw v0
.end method


# virtual methods
.method public kill()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_SURFACE_ALLOC_enabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x30d41fe

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v7, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Outer: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mOuterRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    const-string v0, " / Inner: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame;->mInnerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame;->mBlackSurfaces:[Lcom/android/server/wm/BlackFrame$BlackSurface;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " left="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " top="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
