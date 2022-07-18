.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;,
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field protected mBrightnessView:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

.field private final mChildrenLayoutTop:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContentMarginEnd:I

.field private mContentMarginStart:I

.field protected final mContext:Landroid/content/Context;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field protected mExpanded:Z

.field protected mFooter:Landroid/view/View;

.field private mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHeaderContainer:Landroid/view/ViewGroup;

.field protected mHorizontalContentContainer:Landroid/widget/LinearLayout;

.field private mHorizontalLinearLayout:Landroid/widget/LinearLayout;

.field protected mListening:Z

.field private final mMediaTopMargin:I

.field private final mMediaTotalBottomMargin:I

.field private mMovableContentStartIndex:I

.field private final mOnConfigurationChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mSecurityFooter:Landroid/view/View;

.field private mSquishinessFraction:F

.field protected mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

.field private mUsingHorizontalLayout:Z

.field protected mUsingMediaPlayer:Z


# direct methods
.method public static synthetic $r8$lambda$rqaT62ZW3CH_6fk-u18NMFX0iwE(Landroid/content/res/Configuration;Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/qs/QSPanel;->lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mSquishinessFraction:F

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mChildrenLayoutTop:Landroid/util/ArrayMap;

    invoke-static {p1}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->quick_settings_bottom_margin_media:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_margin_vertical:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTopMargin:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object p0
.end method

.method private fireScanStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSDetail$Callback;->onToggleStateChanged(Z)V

    :cond_0
    return-void
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_1
    invoke-direct {p0, v0, p3, p4}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    return-void
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne v1, p2, :cond_1

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    iget-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTileView;->getDetailY()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v2, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getOffsetTop(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    return-void
.end method

.method private static synthetic lambda$onConfigurationChanged$0(Landroid/content/res/Configuration;Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;->onConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private needsDynamicRowsAndColumns()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private reAttachMediaHost(Landroid/view/ViewGroup;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eq v1, v0, :cond_8

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :goto_1
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz p2, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_4

    :cond_6
    :goto_3
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_4
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->mediaNeedsTopMargin()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p2, :cond_7

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTopMargin:I

    :cond_7
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_8
    return-void
.end method

.method private setBrightnessViewMargin(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;
    
    if-eqz p1, :cond_bottom

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_brightness_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_brightness_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_finish

    :cond_bottom
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_brightness_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_finish
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessSliderVisibility()V

    return-void
.end method

.method private switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V
    .locals 4

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/lit8 v0, v0, 0x1

    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p2, :cond_mw2

    iget-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-nez p2, :cond_mw

    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    sget v2, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I
    
    const/4 v3, 0x1

    if-eq v2, v3, :cond_mw3

    goto :goto_1

    :cond_mw3
    move v1, v0

    :goto_1
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_mw
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessSliderPosition()V

    :cond_mw2
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    if-eqz p2, :cond_1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    :cond_1
    return-void
.end method

.method private switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;ILjava/lang/String;)V

    return-void
.end method

.method static switchToParent(Landroid/view/View;Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p1, "Trying to move view to null parent"

    invoke-static {p3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eq p3, p1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p3

    if-ne p3, p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private updateHorizontalLinearLayoutMargins()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->displayMediaMarginsOnMedia()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mMediaTotalBottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateMargins(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateHorizontalLinearLayoutMargins()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    return-void
.end method

.method private updatePageIndicator()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    :cond_0
    return-void
.end method

.method private updateViewPositions()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getTilesHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mChildrenLayoutTop:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x1

    invoke-static {p2, p0}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .registers 6
    .param p1, "tileRecord"    # Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 71
    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 109
    .local v0, "callback":Lcom/android/systemui/plugins/qs/QSTile$Callback;
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 110
    iput-object v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 111
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object v2, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {v1, v2}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 112
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    .line 114
    .local v1, "qSTileLayout":Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    if-eqz v1, :cond_26

    .line 115
    invoke-interface {v1, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 116
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/qs/QSPanel;->tileClickListener(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    .line 118
    :cond_26
    return-void
.end method


.method closeDetail()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method protected closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method protected displayMediaMarginsOnMedia()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    iget-object p0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method getBrightnessView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    return-object p0
.end method

.method protected getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QSPanel"

    return-object p0
.end method

.method public getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_paged_tile_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mSquishinessFraction:F

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setSquishinessFraction(F)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method public getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    return-object p0
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    :goto_1
    return-void
.end method

.method initialize()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    new-instance v0, Lcom/android/internal/widget/RemeasuringLinearLayout;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/RemeasuringLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method public isListening()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    return p0
.end method

.method protected mediaNeedsTopMargin()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda0;-><init>(Landroid/content/res/Configuration;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->qs_footer:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mChildrenLayoutTop:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p2, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateViewPositions()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v1, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout;->getNumPages()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/16 v0, 0x2710

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    rsub-int p2, p2, 0x2710

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setExcessHeight(I)V

    move p2, v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v1

    add-int/2addr p1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "qs_show_brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openDetails(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method

.method protected openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mOnConfigurationChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    return-void
.end method

.method public setBrightnessView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;
    
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setBrightnessViewMargin(Z)V

    iget p1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mMovableContentStartIndex:I

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSDetail$Callback;

    return-void
.end method

.method public setContentMargins(IILandroid/view/ViewGroup;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginStart:I

    iput p2, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/QSPanel;->updateMediaHostContentMargins(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v0, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->scanState:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of p1, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method public setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, v0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mFooterPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    :cond_0
    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    :cond_0
    return-void
.end method

.method protected setPageMargin(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v0, p0, Lcom/android/systemui/qs/PagedTileLayout;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setPageMargin(I)V

    :cond_0
    return-void
.end method

.method public setSecurityFooter(Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSPanel;->switchSecurityFooter(Z)V

    return-void
.end method

.method public setSquishinessFraction(F)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mSquishinessFraction:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mSquishinessFraction:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setSquishinessFraction(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updateViewPositions()V

    return-void
.end method

.method setUsingHorizontalLayout(ZLandroid/view/ViewGroup;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_6

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_1
    move-object p3, p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/qs/QSPanel;->switchAllContentToParent(Landroid/view/ViewGroup;Lcom/android/systemui/qs/QSPanel$QSTileLayout;)V

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/qs/QSPanel;->reAttachMediaHost(Landroid/view/ViewGroup;Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->needsDynamicRowsAndColumns()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    invoke-interface {p3, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMinRows(I)Z

    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    sget v0, Lcom/android/mwilky/Renovate;->mQsColumns:I

    :goto_2
    invoke-interface {p3, v0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setMaxColumns(I)Z

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalLinearLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    const/16 p1, 0x8

    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method protected shouldShowDetail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    return p0
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .locals 5

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v4, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    iput-object p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    aget p2, p3, v0

    sub-int p2, v1, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    aget p2, p3, v2

    sub-int p2, v3, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    aput v1, p3, v0

    aput v3, p3, v2

    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public switchSecurityFooter(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHeaderContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSecurityFooter:Landroid/view/View;

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, v0, p0, p1}, Lcom/android/systemui/qs/QSPanel;->switchToParent(Landroid/view/View;Landroid/view/ViewGroup;I)V

    :goto_0
    return-void
.end method

.method protected updateMargins(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected updateMediaHostContentMargins(Landroid/view/ViewGroup;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mUsingHorizontalLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mContentMarginEnd:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/qs/QSPanel;->updateMargins(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method protected updatePadding()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_panel_padding_bottom:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method public updateResources()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updatePadding()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    sget v0, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I
    
    if-eqz v0, :cond_top
    
    const/4 v0, 0x0
    
    goto :goto_bottom
    
    :cond_top
    const/4 v0, 0x1

    :goto_bottom
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setBrightnessViewMargin(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_0
    return-void
.end method

.method public updateBrightnessSliderPosition()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;
    
    sget v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I
    
    if-eqz v1, :cond_top
    
    const/4 v1, 0x0
    
    goto :goto_bottom
    
    :cond_top
    const/4 v1, 0x1

    :goto_bottom    
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    
    sget v1, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I
    
    if-eqz v1, :cond_top2
    
    const/4 v1, 0x0
    
    goto :goto_bottom2
    
    :cond_top2
    const/4 v1, 0x1

    :goto_bottom2
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setBrightnessViewMargin(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    :cond_0
    return-void
.end method

.method public updateBrightnessSliderVisibility()V
    .locals 3

    sget v0, Lcom/android/mwilky/Renovate;->mQsBrightnessSliderPosition:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_hidden

    goto :goto_exit

    :cond_hidden
    const v2, 0x8

    :goto_exit
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    if-eqz v0, :cond_exit

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_exit
    return-void
.end method

.method private setAnimationTile(Lcom/android/systemui/plugins/qs/QSTileView;)V
    .registers 9
    .param p1, "v"    # Lcom/android/systemui/plugins/qs/QSTileView;

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "objectAnimator":Landroid/animation/ObjectAnimator;
    sget v1, Lcom/android/mwilky/Renovate;->mQsAnimationStyle:I

    .line 159
    .local v1, "i":I
    sget v2, Lcom/android/mwilky/Renovate;->mQsAnimationDuration:I

    .line 160
    .local v2, "i2":I
    sget v3, Lcom/android/mwilky/Renovate;->mQsAnimationInterpolator:I

    .line 161
    .local v3, "i3":I
    nop

    .line 163
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v1, v4, :cond_17

    .line 164
    new-array v4, v5, [F

    fill-array-data v4, :array_10c

    const-string v6, "rotationX"

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 166
    :cond_17
    if-ne v1, v5, :cond_24

    .line 167
    new-array v4, v5, [F

    fill-array-data v4, :array_114

    const-string v6, "rotationY"

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 169
    :cond_24
    const/4 v4, 0x3

    const-string v6, "rotation"

    if-ne v1, v4, :cond_32

    .line 170
    new-array v4, v5, [F

    fill-array-data v4, :array_11c

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 172
    :cond_32
    const/4 v4, 0x4

    if-ne v1, v4, :cond_3e

    .line 173
    new-array v4, v5, [F

    fill-array-data v4, :array_124

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 175
    :cond_3e
    const/4 v4, 0x5

    if-ne v1, v4, :cond_4c

    .line 176
    new-array v4, v5, [F

    fill-array-data v4, :array_12c

    const-string v6, "scaleX"

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 178
    :cond_4c
    const/4 v4, 0x6

    if-ne v1, v4, :cond_5a

    .line 179
    new-array v4, v5, [F

    fill-array-data v4, :array_134

    const-string v6, "scaleY"

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 181
    :cond_5a
    const/4 v4, 0x7

    const-string/jumbo v6, "translationX"

    if-ne v1, v4, :cond_69

    .line 182
    new-array v4, v5, [F

    fill-array-data v4, :array_13c

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 184
    :cond_69
    const/16 v4, 0x8

    if-ne v1, v4, :cond_76

    .line 185
    new-array v4, v5, [F

    fill-array-data v4, :array_144

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 187
    :cond_76
    const/16 v4, 0x9

    const-string/jumbo v6, "translationY"

    if-ne v1, v4, :cond_86

    .line 188
    new-array v4, v5, [F

    fill-array-data v4, :array_14c

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 190
    :cond_86
    const/16 v4, 0xa

    if-ne v1, v4, :cond_93

    .line 191
    new-array v4, v5, [F

    fill-array-data v4, :array_154

    invoke-static {p1, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 193
    :cond_93
    const/16 v4, 0xb

    if-ne v1, v4, :cond_a2

    .line 194
    new-array v4, v5, [F

    fill-array-data v4, :array_15c

    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    :cond_a2
    if-eqz v0, :cond_f7

    .line 197
    packed-switch v3, :pswitch_data_f8

    goto :goto_f0

    .line 220
    :pswitch_a8
    new-instance v4, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_f0

    .line 217
    :pswitch_b1
    new-instance v4, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 218
    goto :goto_f0

    .line 214
    :pswitch_ba
    new-instance v4, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v4}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 215
    goto :goto_f0

    .line 211
    :pswitch_c3
    new-instance v4, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v4}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 212
    goto :goto_f0

    .line 208
    :pswitch_cc
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    goto :goto_f0

    .line 205
    :pswitch_d5
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    goto :goto_f0

    .line 202
    :pswitch_de
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 203
    goto :goto_f0

    .line 199
    :pswitch_e7
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    nop

    .line 223
    :goto_f0
    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 224
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 226
    :cond_f7
    return-void

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_e7
        :pswitch_de
        :pswitch_d5
        :pswitch_cc
        :pswitch_c3
        :pswitch_ba
        :pswitch_b1
        :pswitch_a8
    .end packed-switch

    :array_10c
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_114
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_11c
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_124
    .array-data 4
        0x0
        -0x3c4c0000    # -360.0f
    .end array-data

    :array_12c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_134
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_13c
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_144
    .array-data 4
        0x42480000    # 50.0f
        0x0
    .end array-data

    :array_14c
    .array-data 4
        -0x3db80000    # -50.0f
        0x0
    .end array-data

    :array_154
    .array-data 4
        0x42480000    # 50.0f
        0x0
    .end array-data

    :array_15c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private tileClickListener(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V
    .registers 4
    .param p1, "t"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "v"    # Lcom/android/systemui/plugins/qs/QSTileView;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_c

    .line 149
    new-instance v0, Lcom/android/systemui/qs/QSPanel$TileAnims;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/qs/QSPanel$TileAnims;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V

    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_c
    return-void
.end method

.method synthetic lambda$tileClickListener$0$com-android-systemui-qs-QSPanel(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;Landroid/view/View;)V
    .registers 4
    .param p1, "t"    # Lcom/android/systemui/plugins/qs/QSTile;
    .param p2, "v"    # Lcom/android/systemui/plugins/qs/QSTileView;
    .param p3, "view"    # Landroid/view/View;

    .line 150
    invoke-interface {p1, p3}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    .line 151
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/QSPanel;->setAnimationTile(Lcom/android/systemui/plugins/qs/QSTileView;)V

    .line 152
    return-void
.end method

.method public updateQsBrightnessSliderHeight()V
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;
    
    check-cast v0,  Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderView;->updateQsBrightnessSlider()V

    .line 56
    :cond_7
    return-void
.end method
