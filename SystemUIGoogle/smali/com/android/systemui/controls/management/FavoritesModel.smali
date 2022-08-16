.class public final Lcom/android/systemui/controls/management/FavoritesModel;
.super Ljava/lang/Object;
.source "FavoritesModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoritesModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoritesModel.kt\ncom/android/systemui/controls/management/FavoritesModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n1547#2:255\n1618#2,3:256\n1547#2:259\n1618#2,3:260\n348#2,7:263\n*S KotlinDebug\n*F\n+ 1 FavoritesModel.kt\ncom/android/systemui/controls/management/FavoritesModel\n*L\n87#1:255\n87#1:256,3\n83#1:259\n83#1:260,3\n97#1:263,7\n*E\n"
.end annotation


# instance fields
.field public adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field public final componentName:Landroid/content/ComponentName;

.field public final customIconCache:Lcom/android/systemui/controls/CustomIconCache;

.field public dividerPosition:I

.field public final elements:Ljava/util/ArrayList;

.field public final favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

.field public final itemTouchHelperCallback:Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

.field public modified:Z

.field public final moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/CustomIconCache;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/ControlsEditingActivity$favoritesModelCallback$1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    iput-object p2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/controls/controller/ControlInfo;

    new-instance p4, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    new-instance v1, Lcom/android/systemui/controls/management/FavoritesModel$elements$1$1;

    iget-object v2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    invoke-direct {v1, v2}, Lcom/android/systemui/controls/management/FavoritesModel$elements$1$1;-><init>(Lcom/android/systemui/controls/CustomIconCache;)V

    invoke-direct {p4, v0, p3, v1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/systemui/controls/management/DividerWrapper;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/systemui/controls/management/DividerWrapper;-><init>(I)V

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->itemTouchHelperCallback:Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

    return-void
.end method


# virtual methods
.method public final changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/ElementWrapper;

    instance-of v6, v3, Lcom/android/systemui/controls/ControlInterface;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/android/systemui/controls/ControlInterface;

    invoke-interface {v3}, Lcom/android/systemui/controls/ControlInterface;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_3

    return-void

    :cond_3
    iget p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ge v2, p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    if-le v2, p1, :cond_6

    if-nez p2, :cond_6

    :cond_5
    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    :goto_3
    return-void
.end method

.method public final getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/ElementWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getFavorites()Ljava/util/ArrayList;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/ElementWrapper;

    check-cast v1, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    iget-object v1, v1, Lcom/android/systemui/controls/management/ControlInfoWrapper;->controlInfo:Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getMoveHelper()Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    return-object p0
.end method

.method public final onMoveItemInternal(II)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_2

    :cond_1
    if-le p1, v0, :cond_c

    if-gt p2, v0, :cond_c

    :cond_2
    if-ge p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    iput-boolean v1, v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->favorite:Z

    goto :goto_0

    :cond_3
    if-le p1, v0, :cond_4

    if-gt p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    iput-boolean v2, v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;->favorite:Z

    :cond_4
    :goto_0
    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ge p1, v0, :cond_6

    if-lt p2, v0, :cond_6

    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/DividerWrapper;

    iput-boolean v2, v1, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    iget-object v1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    invoke-interface {v1, v2}, Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;->onNoneChanged(Z)V

    move v1, v2

    :cond_5
    iget v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    iget-object v4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_9

    iget-object v1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/management/DividerWrapper;

    iput-boolean v2, v1, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    goto :goto_2

    :cond_6
    if-le p1, v0, :cond_9

    if-gt p2, v0, :cond_9

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ne v3, v2, :cond_7

    iget-object v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/DividerWrapper;

    iput-boolean v1, v3, Lcom/android/systemui/controls/management/DividerWrapper;->showNone:Z

    iget-object v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    invoke-interface {v3, v1}, Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;->onNoneChanged(Z)V

    move v3, v2

    goto :goto_1

    :cond_7
    move v3, v1

    :goto_1
    iget v4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    iget-object v5, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_8

    iget-object v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/DividerWrapper;

    iput-boolean v1, v3, Lcom/android/systemui/controls/management/DividerWrapper;->showDivider:Z

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v3

    :cond_9
    :goto_3
    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_b
    :goto_4
    move v1, v2

    :cond_c
    if-ge p1, p2, :cond_d

    move v0, p1

    :goto_5
    if-ge v0, p2, :cond_f

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-static {v4, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v3

    goto :goto_5

    :cond_d
    add-int/lit8 v0, p2, 0x1

    if-gt v0, p1, :cond_f

    move v3, p1

    :goto_6
    add-int/lit8 v4, v3, -0x1

    iget-object v5, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/ArrayList;

    invoke-static {v5, v3, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-ne v3, v0, :cond_e

    goto :goto_7

    :cond_e
    move v3, v4

    goto :goto_6

    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :goto_8
    if-eqz v1, :cond_12

    iget-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p1, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p1, p2, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_12
    :goto_9
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    if-nez p1, :cond_13

    iput-boolean v2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    invoke-interface {p0}, Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;->onFirstChange()V

    :cond_13
    return-void
.end method
