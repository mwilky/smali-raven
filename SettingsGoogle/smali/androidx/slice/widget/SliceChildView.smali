.class public abstract Landroidx/slice/widget/SliceChildView;
.super Landroid/widget/FrameLayout;
.source "SliceChildView.java"


# instance fields
.field protected mInsetBottom:I

.field protected mInsetEnd:I

.field protected mInsetStart:I

.field protected mInsetTop:I

.field protected mLastUpdated:J

.field protected mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field protected mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field protected mRowStyle:Landroidx/slice/widget/RowStyle;

.field protected mShowLastUpdated:Z

.field protected mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field protected mTintColor:I

.field protected mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attributeSet"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHiddenItemCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLoadingActions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public abstract resetView()V
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowTwoLines"
        }
    .end annotation

    return-void
.end method

.method public setInsets(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    iput p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    iput p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    iput p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastUpdated"
        }
    .end annotation

    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadingActions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policy"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showLastUpdated"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-void
.end method

.method public setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "slice",
            "isHeader",
            "rowIndex",
            "rowCount",
            "observer"
        }
    .end annotation

    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/RowStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "styles",
            "rowStyle"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iput-object p2, p0, Landroidx/slice/widget/SliceChildView;->mRowStyle:Landroidx/slice/widget/RowStyle;

    return-void
.end method

.method public setTint(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tintColor"
        }
    .end annotation

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    return-void
.end method
