.class public Lcom/android/systemui/qs/customize/TileAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TileAdapter.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;,
        Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;,
        Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/systemui/qs/customize/TileAdapter$Holder;",
        ">;",
        "Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;"
    }
.end annotation


# static fields
.field private static final NUM_COLUMNS_ID:I


# instance fields
.field private mAccessibilityAction:I

.field private final mAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private mAccessibilityFromIndex:I

.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

.field private mEditIndex:I

.field private mFocusIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

.field private final mMinNumTiles:I

.field private mNeedsFocus:Z

.field private mNumColumns:I

.field private mOtherTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mTileDividerIndex:I

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$HyjuXQRrTbP26p3N74EJsbhl8aE(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->lambda$startAccessibleAdd$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/R$integer;->quick_settings_num_columns:I

    sput v0, Lcom/android/systemui/qs/customize/TileAdapter;->NUM_COLUMNS_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$4;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/TileAdapter$5;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCallbacks:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iput-object p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/qs/customize/TileAdapter$TileItemDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/content/Context;Lcom/android/systemui/qs/customize/TileAdapter$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    invoke-direct {p2, p3}, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;-><init>(Lcom/android/systemui/qs/customize/TileAdapter$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$integer;->quick_settings_min_num_tiles:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p1, Lcom/android/mwilky/Renovate;->mQsColumns:I

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    new-instance p1, Lcom/android/systemui/qs/customize/TileAdapterDelegate;

    invoke-direct {p1}, Lcom/android/systemui/qs/customize/TileAdapterDelegate;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->setSpanIndexCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/TileAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->isCurrentTile(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleAdd(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->startAccessibleMove(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/customize/TileAdapter;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/customize/TileAdapter;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->move(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/TileAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->selectPosition(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Landroidx/core/view/AccessibilityDelegateCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/TileAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveFromPosition(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/customize/TileAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->canAddFromPosition(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/customize/TileAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->addFromPosition(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/TileAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->removeFromPosition(I)Z

    move-result p0

    return p0
.end method

.method private addFromPosition(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->canAddFromPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(II)Z

    const/4 p0, 0x1

    return p0
.end method

.method private canAddFromPosition(I)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canRemoveFromPosition(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->isCurrentTile(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private canRemoveTiles()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearAccessibilityState()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    return-void
.end method

.method private focusOnHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$3;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    :cond_0
    return-void
.end method

.method private getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isCurrentTile(I)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$startAccessibleAdd$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private move(IILjava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/List<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_0
    return-void
.end method

.method private move(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)Z

    move-result p0

    return p0
.end method

.method private move(IIZ)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IILjava/util/List;Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    iget p3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v1, 0x0

    if-lt p2, p3, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_REMOVE:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lt p1, p3, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_ADD:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_MOVE:Lcom/android/systemui/qs/QSEditEvent;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    return v0
.end method

.method private recalcSpecs()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getAndRemoveOther(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mOtherTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->updateDividerLocations()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    :goto_2
    return-void
.end method

.method private removeFromPosition(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveFromPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(II)Z

    const/4 p0, 0x1

    return p0
.end method

.method private selectPosition(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    iget v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    invoke-direct {p0, v2, p1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->move(IIZ)Z

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    iput-boolean v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setSelectableForHeaders(Landroid/view/View;)V
    .locals 1

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private startAccessibleAdd(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private startAccessibleMove(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityFromIndex:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    iput p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNeedsFocus:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static strip(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    const-string v0, "custom("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private updateDividerLocations()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ne v3, v0, :cond_0

    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    goto :goto_1

    :cond_0
    iput v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public changeHalfMargin(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;->setHalfMargin(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mDecoration:Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object p0
.end method

.method public getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    if-ne p1, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public getMarginItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMarginDecoration:Lcom/android/systemui/qs/customize/TileAdapter$MarginTileDecoration;

    return-object p0
.end method

.method public getNumColumns()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    return p0
.end method

.method public getSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
    .locals 10

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setSelectableForHeaders(Landroid/view/View;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTileDividerIndex:I

    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v3

    if-ge p2, p0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    if-nez v0, :cond_3

    sget v0, Lcom/android/systemui/R$string;->drag_to_add_tiles:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->canRemoveTiles()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentDrag:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge v0, v1, :cond_4

    sget v0, Lcom/android/systemui/R$string;->drag_to_remove_disabled:I

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mMinNumTiles:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    sget v0, Lcom/android/systemui/R$string;->drag_to_remove_tiles:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setSelectableForHeaders(Landroid/view/View;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_add_to_position:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/qs/customize/TileAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->focusOnHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    if-lez p2, :cond_7

    iget v5, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-ge p2, v5, :cond_7

    move v5, v3

    goto :goto_1

    :cond_7
    move v5, v2

    :goto_1
    if-eqz v5, :cond_8

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-ne v6, v3, :cond_8

    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_add_to_position:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_8
    if-eqz v5, :cond_9

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-ne v6, v4, :cond_9

    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$string;->accessibility_qs_edit_tile_move_to_position:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_9
    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v6, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v6, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :goto_2
    iget-object v4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const-string v6, ""

    iput-object v6, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getTileAsCustomizeView()Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    iget-object v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->changeState(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getTileAsCustomizeView()Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-le p2, v6, :cond_a

    iget-boolean v6, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v6, :cond_a

    move v6, v3

    goto :goto_3

    :cond_a
    move v6, v2

    :goto_3
    invoke-virtual {v4, v6}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getTileAsCustomizeView()Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v4

    iget v6, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mEditIndex:I

    if-lt p2, v6, :cond_b

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-eqz v0, :cond_c

    :cond_b
    move v2, v3

    :cond_c
    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowSideView(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAccessibilityAction:I

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    if-eqz v5, :cond_d

    move v1, v3

    :cond_d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    if-eqz v5, :cond_e

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$200(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/customize/TileAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$2;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    iget v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mFocusIndex:I

    if-ne p2, v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->focusOnHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V

    :cond_f
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/qs/customize/TileAdapter$Holder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_header:I

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const/4 v3, 0x4

    if-ne p2, v3, :cond_1

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_tile_divider:I

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    sget v0, Lcom/android/systemui/R$layout;->qs_customize_divider:I

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2
    sget p2, Lcom/android/systemui/R$layout;->qs_customize_tile_frame:I

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {v1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;-><init>(Lcom/android/systemui/qs/customize/TileAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z

    move-result p0

    return p0
.end method

.method public onFailedToRecycleView(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->clearDrag()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mAllTiles:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    return-void
.end method

.method public resetTileSpecs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->clearAccessibilityState()V

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mCurrentSpecs:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->recalcSpecs()V

    return-void
.end method

.method public updateNumColumns()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v0, Lcom/android/mwilky/Renovate;->mQsColumns:I

    iget v1, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/qs/customize/TileAdapter;->mNumColumns:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
