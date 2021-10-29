.class public final Lcom/android/systemui/controls/management/FavoritesModel;
.super Ljava/lang/Object;
.source "FavoritesModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/ControlsModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/FavoritesModel$Companion;,
        Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoritesModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoritesModel.kt\ncom/android/systemui/controls/management/FavoritesModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,254:1\n1517#2:255\n1588#2,3:256\n1517#2:259\n1588#2,3:260\n318#2,7:263\n*E\n*S KotlinDebug\n*F\n+ 1 FavoritesModel.kt\ncom/android/systemui/controls/management/FavoritesModel\n*L\n87#1:255\n87#1,3:256\n83#1:259\n83#1,3:260\n97#1,7:263\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/FavoritesModel$Companion;


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation
.end field

.field private final componentName:Landroid/content/ComponentName;

.field private final customIconCache:Lcom/android/systemui/controls/CustomIconCache;

.field private dividerPosition:I

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/ElementWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

.field private final itemTouchHelperCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

.field private modified:Z

.field private final moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/FavoritesModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/FavoritesModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/FavoritesModel;->Companion:Lcom/android/systemui/controls/management/FavoritesModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/CustomIconCache;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/CustomIconCache;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;",
            "Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "customIconCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favorites"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoritesModelCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    iput-object p2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/FavoritesModel$moveHelper$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/controls/controller/ControlInfo;

    new-instance v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    iget-object v1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->componentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/systemui/controls/management/FavoritesModel$elements$1$1;

    iget-object v3, p0, Lcom/android/systemui/controls/management/FavoritesModel;->customIconCache:Lcom/android/systemui/controls/CustomIconCache;

    invoke-direct {v2, v3}, Lcom/android/systemui/controls/management/FavoritesModel$elements$1$1;-><init>(Lcom/android/systemui/controls/CustomIconCache;)V

    invoke-direct {v0, v1, p3, p4, v2}, Lcom/android/systemui/controls/management/ControlInfoWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;ZLkotlin/jvm/functions/Function2;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/systemui/controls/management/DividerWrapper;

    const/4 p3, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p3, v0}, Lcom/android/systemui/controls/management/DividerWrapper;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    new-instance p1, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/FavoritesModel$itemTouchHelperCallback$1;-><init>(Lcom/android/systemui/controls/management/FavoritesModel;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->itemTouchHelperCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    return-void
.end method

.method public static final synthetic access$getDividerPosition$p(Lcom/android/systemui/controls/management/FavoritesModel;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    return p0
.end method

.method private final moveElement(II)V
    .locals 3

    if-ge p1, p2, :cond_1

    if-ge p1, p2, :cond_3

    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-lt v0, p2, :cond_0

    goto :goto_2

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    if-gt p2, p1, :cond_3

    :goto_1
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v0

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private final onMoveItemInternal(II)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    if-ge p2, v0, :cond_2

    :cond_1
    if-le p1, v0, :cond_5

    if-gt p2, v0, :cond_5

    :cond_2
    if-ge p1, v0, :cond_3

    if-lt p2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->setFavorite(Z)V

    goto :goto_0

    :cond_3
    if-le p1, v0, :cond_4

    if-gt p2, v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/management/ControlInfoWrapper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->setFavorite(Z)V

    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDivider(II)V

    move v1, v2

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->moveElement(II)V

    iget-object v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :goto_1
    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    if-nez p1, :cond_9

    iput-boolean v2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->modified:Z

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    invoke-interface {p0}, Lcom/android/systemui/controls/management/ControlsModel$ControlsModelCallback;->onFirstChange()V

    :cond_9
    return-void
.end method

.method private final updateDivider(II)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_1

    add-int/lit8 p1, v0, -0x1

    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-nez p1, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerNone(IZ)V

    move v1, v2

    :cond_0
    iget p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-ne p1, p2, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerShow(IZ)V

    :goto_0
    move v1, v2

    goto :goto_2

    :cond_1
    if-le p1, v0, :cond_4

    if-gt p2, v0, :cond_4

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    if-ne p1, v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerNone(IZ)V

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget p2, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p2, v3, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/controls/management/FavoritesModel;->updateDividerShow(IZ)V

    goto :goto_0

    :cond_3
    move v1, p1

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method private final updateDividerNone(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/controls/management/DividerWrapper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/management/DividerWrapper;->setShowNone(Z)V

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->favoritesModelCallback:Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;

    invoke-interface {p0, p2}, Lcom/android/systemui/controls/management/FavoritesModel$FavoritesModelCallback;->onNoneChanged(Z)V

    return-void
.end method

.method private final updateDividerShow(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/management/DividerWrapper;

    invoke-virtual {p0, p2}, Lcom/android/systemui/controls/management/DividerWrapper;->setShowDivider(Z)V

    return-void
.end method


# virtual methods
.method public attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/FavoritesModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    :goto_3
    return-void
.end method

.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/ElementWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->elements:Ljava/util/List;

    return-object p0
.end method

.method public getFavorites()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/controls/management/FavoritesModel;->getElements()Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->dividerPosition:I

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

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

    invoke-virtual {v1}, Lcom/android/systemui/controls/management/ControlInfoWrapper;->getControlInfo()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getItemTouchHelperCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->itemTouchHelperCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    return-object p0
.end method

.method public getMoveHelper()Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/management/FavoritesModel;->moveHelper:Lcom/android/systemui/controls/management/ControlsModel$MoveHelper;

    return-object p0
.end method

.method public onMoveItem(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/management/FavoritesModel;->onMoveItemInternal(II)V

    return-void
.end method
