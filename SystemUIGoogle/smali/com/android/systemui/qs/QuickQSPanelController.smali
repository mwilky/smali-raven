.class public Lcom/android/systemui/qs/QuickQSPanelController;
.super Lcom/android/systemui/qs/QSPanelControllerBase;
.source "QuickQSPanelController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSPanelControllerBase<",
        "Lcom/android/systemui/qs/QuickQSPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

.field private final mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private final mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;


# direct methods
.method public static synthetic $r8$lambda$vEqOQOv7ObL-HObzDRHb8bwXQpQ(Lcom/android/systemui/qs/QuickQSPanelController;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickQSPanelController;->lambda$new$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;)V
    .locals 1

    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/qs/QSPanelControllerBase;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V

    new-instance p1, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickQSPanelController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;
    
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickQSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QuickQSPanelController;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
    
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;
    
    iput-object p12, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    invoke-virtual {p12, p1, p2}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/QuickQSPanel;->setBrightnessView(Landroid/view/View;)V

    invoke-virtual {p11, p1}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/res/Configuration;)V
    .locals 1

    sget p1, Lcom/android/mwilky/Renovate;->mQQsMaxTiles:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickQSPanelController;->setMaxTiles(I)V

    :cond_0
    return-void
.end method

.method private setMaxTiles(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setMaxTiles(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->setTiles()V

    return-void
.end method


# virtual methods
.method public getNumQuickTiles()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result p0

    return p0
.end method

.method public isListening()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onInit()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V
    
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewAttached()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_mw

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    :cond_mw
    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewDetached()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V
    
    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    :cond_0
    return-void
.end method

.method public setContentMargins(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/qs/QSPanel;->setContentMargins(IILandroid/view/ViewGroup;)V

    return-void
.end method

.method public setTiles()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v3

    if-ne v2, v3, :cond_0

    :cond_1
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public getBrightnessView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setListening(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    :goto_0
    return-void
.end method

.method private updateBrightnessMirror()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->updateBrightnessMirror()V

    return-void
.end method

.method public static synthetic $r8$lambda$b7o1hV7DIioJIhjRTbriVPLS_2Q(Lcom/android/systemui/qs/QuickQSPanelController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickQSPanelController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->updateBrightnessMirror()V

    return-void
.end method

.method public updateBrightnessSliderPosition()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->updateBrightnessSliderPosition()V

    invoke-static {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->access$300(Lcom/android/systemui/qs/QuickQSPanelController;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickQSPanelController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->updateBrightnessMirror()V

    return-void
.end method

.method public updateResources()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->updateResources()V
    
    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->updateQqsRows()V
    
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->updateMaxTiles()V

    return-void
.end method

.method public updateMaxTiles()V
    .locals 2

    sget v1, Lcom/android/mwilky/Renovate;->mQQsMaxTiles:I

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickQSPanelController;->setMaxTiles(I)V

    return-void
.end method