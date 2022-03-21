.class public final Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;
.super Ljava/lang/Object;
.source "SplitShadeHeaderController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$Companion;

.field private static final HEADER_TRANSITION_ID:I

.field private static final SPLIT_HEADER_TRANSITION_ID:I


# instance fields
.field private final carrierIconSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final combinedHeaders:Z

.field private final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private final iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

.field private final privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

.field private final qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

.field private qsExpandedFraction:F

.field private shadeExpanded:Z

.field private shadeExpandedFraction:F

.field private splitShadeMode:Z

.field private final statusBar:Landroid/view/View;

.field private final statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->Companion:Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$Companion;

    sget v0, Lcom/android/systemui/R$id;->header_transition:I

    sput v0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->HEADER_TRANSITION_ID:I

    sget v0, Lcom/android/systemui/R$id;->split_header_transition:I

    sput v0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->SPLIT_HEADER_TRANSITION_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/qs/HeaderPrivacyIconsController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 2

    const-string v0, "statusBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarIconController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyIconsController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qsCarrierGroupControllerBuilder"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batteryMeterViewController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBar:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {p5}, Lcom/android/systemui/flags/FeatureFlags;->useCombinedQSHeaders()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->combinedHeaders:Z

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->shadeExpandedFraction:F

    iput p2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsExpandedFraction:F

    instance-of p2, p1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/android/systemui/R$id;->qqs_header_constraint:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$xml;->qqs_header:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/android/systemui/R$id;->qs_header_constraint:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$xml;->qs_header:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/android/systemui/R$id;->split_header_constraint:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$xml;->split_header:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_0
    invoke-virtual {p6}, Lcom/android/systemui/util/ViewController;->init()V

    sget p2, Lcom/android/systemui/R$id;->batteryRemainingIcon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "statusBar.findViewById(R.id.batteryRemainingIcon)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/systemui/battery/BatteryMeterView;

    invoke-virtual {p6}, Lcom/android/systemui/battery/BatteryMeterViewController;->ignoreTunerUpdates()V

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentShowMode(I)V

    invoke-virtual {p5}, Lcom/android/systemui/flags/FeatureFlags;->isCombinedStatusBarSignalIconsEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    const v0, 0x104082e

    invoke-virtual {p6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    aput-object p6, p2, p3

    const/4 p3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    const v0, 0x104081d

    invoke-virtual {p6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p6

    aput-object p6, p2, p3

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x104082b

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    sget p2, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "statusBar.findViewById(R.id.statusIcons)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-direct {p3, p2, p5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/flags/FeatureFlags;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    sget p2, Lcom/android/systemui/R$id;->carrier_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    invoke-virtual {p4, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->setQSCarrierGroup(Lcom/android/systemui/qs/carrier/QSCarrierGroup;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->build()Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    move-result-object p1

    const-string p2, "qsCarrierGroupControllerBuilder\n                .setQSCarrierGroup(statusBar.findViewById(R.id.carrier_group))\n                .build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateConstraints()V

    return-void
.end method

.method public static final synthetic access$updateSingleCarrier(Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateSingleCarrier(Z)V

    return-void
.end method

.method private final onShadeExpandedChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->shadeExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->startListening()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->stopListening()V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updatePosition()V

    return-void
.end method

.method private final onSplitShadeModeChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->splitShadeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->onParentVisible()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->onParentInvisible()V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateConstraints()V

    return-void
.end method

.method private final setVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->visible:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->visible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateListeners()V

    return-void
.end method

.method private final updateConstraints()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->combinedHeaders:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBar:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->splitShadeMode:Z

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->SPLIT_HEADER_TRANSITION_ID:I

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_0

    :cond_1
    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    sget v1, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->HEADER_TRANSITION_ID:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBar:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->transitionToStart()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updatePosition()V

    :goto_0
    return-void
.end method

.method private final updateListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->visible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->isSingleCarrier()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateSingleCarrier(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$updateListeners$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController$updateListeners$1;-><init>(Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setOnSingleCarrierChangedListener(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setOnSingleCarrierChangedListener(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :goto_0
    return-void
.end method

.method private final updatePosition()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBar:Landroid/view/View;

    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->splitShadeMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->visible:Z

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsExpandedFraction:F

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_0
    return-void
.end method

.method private final updateSingleCarrier(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlots(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private final updateVisibility()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->splitShadeMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->combinedHeaders:Z

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->shadeExpanded:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBar:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->setVisible(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final setQsExpandedFraction(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->visible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsExpandedFraction:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->qsExpandedFraction:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updateVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->updatePosition()V

    :cond_1
    return-void
.end method

.method public final setShadeExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->shadeExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->shadeExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->onShadeExpandedChanged()V

    return-void
.end method

.method public final setShadeExpandedFraction(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->visible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->shadeExpandedFraction:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->statusBar:Landroid/view/View;

    sget-object v1, Lcom/android/systemui/animation/ShadeInterpolation;->INSTANCE:Lcom/android/systemui/animation/ShadeInterpolation;

    invoke-static {p1}, Lcom/android/systemui/animation/ShadeInterpolation;->getContentAlpha(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->shadeExpandedFraction:F

    :cond_1
    return-void
.end method

.method public final setSplitShadeMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->splitShadeMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->splitShadeMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SplitShadeHeaderController;->onSplitShadeModeChanged()V

    return-void
.end method
