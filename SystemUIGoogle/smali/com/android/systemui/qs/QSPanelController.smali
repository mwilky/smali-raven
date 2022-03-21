.class public Lcom/android/systemui/qs/QSPanelController;
.super Lcom/android/systemui/qs/QSPanelControllerBase;
.source "QSPanelController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSPanelControllerBase<",
        "Lcom/android/systemui/qs/QSPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private final mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

.field private final mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mGridContentVisible:Z

.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

.field private final mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field private final mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private final mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

.field private mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static synthetic $r8$lambda$pWrm8hTd7tMymTXvMd1IrptMZgU(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->lambda$showEdit$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/systemui/qs/QSTileRevealController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 12

    move-object v10, p0

    move-object v11, p2

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/QSPanelControllerBase;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;)V

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    new-instance v0, Lcom/android/systemui/qs/QSPanelController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelController$1;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    new-instance v0, Lcom/android/systemui/qs/QSPanelController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelController$2;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v11, v10, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    move-object v0, p3

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    move-object/from16 v0, p5

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-object/from16 v0, p8

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    move-object/from16 v0, p15

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v0, p16

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p4

    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v10, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v2, p14

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    iget-object v1, v10, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSliderController;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setBrightnessView(Landroid/view/View;)V

    move-object/from16 v1, p13

    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    new-instance v1, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    invoke-direct {v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;-><init>(Lcom/android/systemui/settings/brightness/MirroredBrightnessController;)V

    iput-object v1, v10, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelController;->updateMediaExpansion()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method private synthetic lambda$showEdit$0(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->show(IIZ)V

    :cond_0
    return-void
.end method

.method private updateMediaExpansion()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    return-void
.end method


# virtual methods
.method protected createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/QSTileRevealController$Factory;->create(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onInit()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelController;->updateMediaExpansion()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSliderController:Lcom/android/systemui/settings/brightness/BrightnessSliderController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewAttached()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->updateMediaDisappearParameters()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v2, "qs_show_brightness"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSPanel;->setSecurityFooter(Landroid/view/View;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;->onQsPanelAttached()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getOrCreateTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;->onQsPanelDettached()V

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewDetached()V

    return-void
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Lcom/android/systemui/plugins/qs/QSTile;)V

    :cond_0
    return-void
.end method

.method public refreshAllTiles()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorHandler:Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/settings/brightness/BrightnessMirrorHandler;->setController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/qs/QSPanel;->setContentMargins(IILandroid/view/ViewGroup;)V

    return-void
.end method

.method public setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    return-void
.end method

.method public setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanelController;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setHeaderContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setListening(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    :goto_1
    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method setPageMargin(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setPageMargin(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->animateExpandSettingsPanel(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateResources()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method

.method public updateBrightnessSliderPosition()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessSliderPosition()V

    #invoke-static {p0}, Lcom/android/systemui/qs/QSPanelController;->access$300(Lcom/android/systemui/qs/QSPanelController;)V

    return-void
.end method

.method public getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    return-object p0
.end method