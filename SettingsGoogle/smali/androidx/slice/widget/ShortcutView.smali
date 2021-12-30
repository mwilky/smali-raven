.class public Landroidx/slice/widget/ShortcutView;
.super Landroidx/slice/widget/SliceChildView;
.source "ShortcutView.java"


# instance fields
.field private mActionItem:Landroidx/slice/SliceItem;

.field private mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field private mLargeIconSize:I

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallIconSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    return-void
.end method


# virtual methods
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

    iget-object p0, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    return-object p0
.end method

.method public getMode()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public performClick()Z
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/slice/widget/EventInfo;

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4, v1}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {p0, v0, v1}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "ShortcutView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return v2
.end method

.method public resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
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
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mLoadingActions:Ljava/util/Set;

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sliceContent"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/slice/widget/ShortcutView;->resetView()V

    iput-object p1, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mActionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getImageMode()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v2, p0, Landroidx/slice/widget/ShortcutView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceContent;->getAccentColor()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    :goto_1
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-static {v3}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    iget v0, p0, Landroidx/slice/widget/ShortcutView;->mSmallIconSize:I

    goto :goto_2

    :cond_4
    iget v0, p0, Landroidx/slice/widget/ShortcutView;->mLargeIconSize:I

    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroidx/slice/widget/ShortcutView;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    xor-int/2addr p1, v1

    invoke-static {v3, v0, v4, p1, p0}, Landroidx/slice/widget/SliceViewUtil;->createCircledIcon(Landroid/content/Context;ILandroidx/core/graphics/drawable/IconCompat;ZLandroid/view/ViewGroup;)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_3
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
