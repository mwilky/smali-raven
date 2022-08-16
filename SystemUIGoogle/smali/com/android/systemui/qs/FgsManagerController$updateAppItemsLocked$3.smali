.class public final Lcom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/FgsManagerController;->updateAppItemsLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFgsManagerController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FgsManagerController.kt\ncom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,623:1\n1052#2:624\n*S KotlinDebug\n*F\n+ 1 FgsManagerController.kt\ncom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3\n*L\n352#1:624\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3;->this$0:Lcom/android/systemui/qs/FgsManagerController;

    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerController;->appListAdapter:Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerController;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3$run$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/android/systemui/qs/FgsManagerController$updateAppItemsLocked$3$run$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->data:Ljava/util/List;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v0, v1, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;->data:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$setData$1;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$setData$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$setData$1;->getOldListSize()I

    move-result v0

    invoke-virtual {v3}, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$setData$1;->getNewListSize()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v6, v0, v2}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v6, 0x2

    div-int/2addr v0, v6

    mul-int/2addr v0, v6

    add-int/2addr v0, v2

    new-array v7, v0, [I

    div-int/lit8 v8, v0, 0x2

    new-array v0, v0, [I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/DiffUtil$Range;

    iget v13, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v14, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v15, v13, v14

    if-lt v15, v2, :cond_16

    iget v11, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v12, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v11, v12

    if-ge v11, v2, :cond_0

    goto/16 :goto_11

    :cond_0
    add-int/2addr v11, v15

    add-int/2addr v11, v2

    div-int/2addr v11, v6

    add-int v12, v2, v8

    aput v14, v7, v12

    aput v13, v0, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_16

    iget v13, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v14, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v13, v14

    iget v14, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v15, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    rem-int/2addr v13, v6

    if-ne v13, v2, :cond_1

    move v13, v2

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    iget v14, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v15, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v14, v15

    iget v15, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v6, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v15, v6

    sub-int/2addr v14, v15

    neg-int v6, v12

    move v15, v6

    :goto_3
    if-gt v15, v12, :cond_a

    if-eq v15, v6, :cond_4

    if-eq v15, v12, :cond_2

    add-int/lit8 v16, v15, 0x1

    add-int v16, v16, v8

    aget v2, v7, v16

    add-int/lit8 v16, v15, -0x1

    add-int v16, v16, v8

    move/from16 v17, v11

    aget v11, v7, v16

    if-le v2, v11, :cond_3

    goto :goto_4

    :cond_2
    move/from16 v17, v11

    :cond_3
    add-int/lit8 v2, v15, -0x1

    add-int/2addr v2, v8

    aget v2, v7, v2

    add-int/lit8 v11, v2, 0x1

    move-object/from16 v16, v1

    goto :goto_5

    :cond_4
    move/from16 v17, v11

    :goto_4
    add-int/lit8 v2, v15, 0x1

    add-int/2addr v2, v8

    aget v2, v7, v2

    move-object/from16 v16, v1

    move v11, v2

    :goto_5
    iget v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    move-object/from16 v18, v5

    iget v5, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int v5, v11, v5

    add-int/2addr v5, v1

    sub-int/2addr v5, v15

    if-eqz v12, :cond_6

    if-eq v11, v2, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v5, -0x1

    goto :goto_7

    :cond_6
    :goto_6
    move v1, v5

    :goto_7
    move-object/from16 v19, v9

    :goto_8
    iget v9, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    if-ge v11, v9, :cond_7

    iget v9, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    if-ge v5, v9, :cond_7

    invoke-virtual {v3, v11, v5}, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$setData$1;->areItemsTheSame(II)Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_7
    add-int v9, v15, v8

    aput v11, v7, v9

    if-eqz v13, :cond_8

    sub-int v9, v14, v15

    move/from16 v20, v13

    add-int/lit8 v13, v6, 0x1

    if-lt v9, v13, :cond_9

    add-int/lit8 v13, v12, -0x1

    if-gt v9, v13, :cond_9

    add-int/2addr v9, v8

    aget v9, v0, v9

    if-gt v9, v11, :cond_9

    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v9}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v2, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v1, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v11, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v5, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v1, 0x0

    iput-boolean v1, v9, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_9

    :cond_8
    move/from16 v20, v13

    :cond_9
    add-int/lit8 v15, v15, 0x2

    move-object/from16 v1, v16

    move/from16 v11, v17

    move-object/from16 v5, v18

    move-object/from16 v9, v19

    move/from16 v13, v20

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v16, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move/from16 v17, v11

    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_b

    move-object v11, v9

    move-object/from16 v20, v10

    goto/16 :goto_12

    :cond_b
    iget v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v2, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    sub-int/2addr v1, v2

    iget v2, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v5, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    sub-int/2addr v2, v5

    sub-int/2addr v1, v2

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_a

    :cond_c
    const/4 v2, 0x0

    :goto_a
    move v5, v6

    :goto_b
    if-gt v5, v12, :cond_14

    if-eq v5, v6, :cond_e

    if-eq v5, v12, :cond_d

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v9, v8

    aget v9, v0, v9

    add-int/lit8 v11, v5, -0x1

    add-int/2addr v11, v8

    aget v11, v0, v11

    if-ge v9, v11, :cond_d

    goto :goto_c

    :cond_d
    add-int/lit8 v9, v5, -0x1

    add-int/2addr v9, v8

    aget v9, v0, v9

    add-int/lit8 v11, v9, -0x1

    goto :goto_d

    :cond_e
    :goto_c
    add-int/lit8 v9, v5, 0x1

    add-int/2addr v9, v8

    aget v9, v0, v9

    move v11, v9

    :goto_d
    iget v13, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v14, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    sub-int/2addr v14, v11

    sub-int/2addr v14, v5

    sub-int/2addr v13, v14

    if-eqz v12, :cond_10

    if-eq v11, v9, :cond_f

    goto :goto_e

    :cond_f
    add-int/lit8 v14, v13, 0x1

    goto :goto_f

    :cond_10
    :goto_e
    move v14, v13

    :goto_f
    iget v15, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    if-le v11, v15, :cond_11

    iget v15, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    if-le v13, v15, :cond_11

    add-int/lit8 v15, v11, -0x1

    move-object/from16 v20, v10

    add-int/lit8 v10, v13, -0x1

    invoke-virtual {v3, v15, v10}, Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$setData$1;->areItemsTheSame(II)Z

    move-result v21

    if-eqz v21, :cond_12

    move v13, v10

    move v11, v15

    move-object/from16 v10, v20

    goto :goto_f

    :cond_11
    move-object/from16 v20, v10

    :cond_12
    add-int v10, v5, v8

    aput v11, v0, v10

    if-eqz v2, :cond_13

    sub-int v10, v1, v5

    if-lt v10, v6, :cond_13

    if-gt v10, v12, :cond_13

    add-int/2addr v10, v8

    aget v10, v7, v10

    if-lt v10, v11, :cond_13

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Snake;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DiffUtil$Snake;-><init>()V

    iput v11, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v13, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v9, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v14, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    goto :goto_10

    :cond_13
    add-int/lit8 v5, v5, 0x2

    move-object/from16 v10, v20

    goto :goto_b

    :cond_14
    move-object/from16 v20, v10

    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_15

    move-object v11, v1

    goto :goto_12

    :cond_15
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    move/from16 v11, v17

    move-object/from16 v5, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    const/4 v2, 0x1

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_16
    :goto_11
    move-object/from16 v16, v1

    move-object/from16 v18, v5

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/4 v11, 0x0

    :goto_12
    if-eqz v11, :cond_1e

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v1

    if-lez v1, :cond_1c

    iget v1, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iget v2, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    sub-int/2addr v1, v2

    iget v5, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iget v6, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    sub-int/2addr v5, v6

    if-eq v1, v5, :cond_17

    const/4 v9, 0x1

    goto :goto_13

    :cond_17
    const/4 v9, 0x0

    :goto_13
    if-eqz v9, :cond_1b

    iget-boolean v9, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->reverse:Z

    if-eqz v9, :cond_18

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v1, v6, v2, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_18
    if-le v1, v5, :cond_19

    const/4 v12, 0x1

    goto :goto_14

    :cond_19
    const/4 v12, 0x0

    :goto_14
    if-eqz v12, :cond_1a

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v1, v6, v2, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_1a
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v11}, Landroidx/recyclerview/widget/DiffUtil$Snake;->diagonalSize()I

    move-result v5

    invoke-direct {v1, v6, v2, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    goto :goto_15

    :cond_1b
    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    invoke-direct {v1, v6, v2, v5}, Landroidx/recyclerview/widget/DiffUtil$Diagonal;-><init>(III)V

    :goto_15
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$Range;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DiffUtil$Range;-><init>()V

    move-object/from16 v2, v19

    goto :goto_16

    :cond_1d
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object/from16 v2, v19

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DiffUtil$Range;

    :goto_16
    move-object/from16 v10, v20

    iget v5, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iput v5, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v5, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iput v5, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    iget v5, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startX:I

    iput v5, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v5, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->startY:I

    iput v5, v1, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    move-object/from16 v5, v18

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iput v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListEnd:I

    iget v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iput v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListEnd:I

    iget v1, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endX:I

    iput v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->oldListStart:I

    iget v1, v11, Landroidx/recyclerview/widget/DiffUtil$Snake;->endY:I

    iput v1, v10, Landroidx/recyclerview/widget/DiffUtil$Range;->newListStart:I

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1e
    move-object/from16 v5, v18

    move-object/from16 v2, v19

    move-object/from16 v10, v20

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    move-object v9, v2

    move-object/from16 v1, v16

    const/4 v2, 0x1

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v16, v1

    sget-object v1, Landroidx/recyclerview/widget/DiffUtil;->DIAGONAL_COMPARATOR:Landroidx/recyclerview/widget/DiffUtil$1;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {v1, v3, v4, v7, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;-><init>(Lcom/android/systemui/qs/FgsManagerController$AppListAdapter$setData$1;Ljava/util/ArrayList;[I[I)V

    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Lcom/android/systemui/qs/FgsManagerController$AppListAdapter;)V

    instance-of v2, v0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v2, :cond_20

    check-cast v0, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    goto :goto_18

    :cond_20
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/AdapterListUpdateCallback;)V

    move-object v0, v2

    :goto_18
    iget v2, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iget v5, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldListSize:I

    iget v6, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewListSize:I

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    :goto_19
    if-ltz v4, :cond_2a

    iget-object v7, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mDiagonals:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    iget v8, v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v9, v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    add-int/2addr v8, v9

    iget v10, v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int/2addr v10, v9

    :cond_21
    :goto_1a
    if-le v5, v8, :cond_24

    add-int/lit8 v5, v5, -0x1

    iget-object v9, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v9, v9, v5

    and-int/lit8 v11, v9, 0xc

    if-eqz v11, :cond_23

    shr-int/lit8 v11, v9, 0x4

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v11

    if-eqz v11, :cond_22

    iget v11, v11, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v11, v2, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    invoke-virtual {v0, v5, v11}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_21

    iget-object v9, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {v0, v11, v12, v9}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_1a

    :cond_22
    const/4 v12, 0x1

    new-instance v9, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v11, v2, v5

    sub-int/2addr v11, v12

    invoke-direct {v9, v5, v11, v12}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_23
    const/4 v12, 0x1

    invoke-virtual {v0, v5, v12}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    :cond_24
    :goto_1b
    if-le v6, v10, :cond_27

    add-int/lit8 v6, v6, -0x1

    iget-object v8, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mNewItemStatuses:[I

    aget v8, v8, v6

    and-int/lit8 v9, v8, 0xc

    if-eqz v9, :cond_26

    shr-int/lit8 v9, v8, 0x4

    const/4 v11, 0x1

    invoke-static {v3, v9, v11}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->getPostponedUpdate(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    move-result-object v9

    if-nez v9, :cond_25

    new-instance v8, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;

    sub-int v9, v2, v5

    const/4 v12, 0x0

    invoke-direct {v8, v6, v9, v12}, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;-><init>(IIZ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_25
    const/4 v12, 0x0

    iget v9, v9, Landroidx/recyclerview/widget/DiffUtil$PostponedUpdate;->currentPos:I

    sub-int v9, v2, v9

    sub-int/2addr v9, v11

    invoke-virtual {v0, v9, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_24

    iget-object v8, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v11, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_1b

    :cond_26
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v0, v5, v11}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_27
    const/4 v12, 0x0

    iget v5, v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    move v6, v5

    move v5, v12

    :goto_1c
    iget v8, v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->size:I

    if-ge v5, v8, :cond_29

    iget-object v8, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mOldItemStatuses:[I

    aget v8, v8, v6

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x2

    if-ne v8, v9, :cond_28

    iget-object v8, v1, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->mCallback:Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v6, v10, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_1d

    :cond_28
    const/4 v8, 0x0

    const/4 v10, 0x1

    :goto_1d
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_29
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    iget v5, v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    iget v6, v7, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->y:I

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_19

    :cond_2a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method
