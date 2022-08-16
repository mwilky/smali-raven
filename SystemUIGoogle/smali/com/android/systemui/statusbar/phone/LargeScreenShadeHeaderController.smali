.class public final Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;
.super Ljava/lang/Object;
.source "LargeScreenShadeHeaderController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public active:Z

.field public final carrierIconSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final chipVisibilityListener:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$chipVisibilityListener$1;

.field public final clock:Landroid/widget/TextView;

.field public final combinedHeaders:Z

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final date:Landroid/widget/TextView;

.field public final header:Landroid/view/View;

.field public final iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field public final iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field public final privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

.field public final qsCarrierGroup:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

.field public final qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

.field public qsDisabled:Z

.field public qsExpandedFraction:F

.field public qsScrollY:I

.field public shadeExpanded:Z

.field public shadeExpandedFraction:F

.field public final statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field public visible:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/qs/HeaderPrivacyIconsController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/battery/BatteryMeterViewController;Lcom/android/systemui/dump/DumpManager;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->privacyIconsController:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    sget-object v7, Lcom/android/systemui/flags/Flags;->COMBINED_QS_HEADERS:Lcom/android/systemui/flags/BooleanFlag;

    invoke-interface {v5, v7}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/BooleanFlag;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->combinedHeaders:Z

    const v7, 0x7f0b0194

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->clock:Landroid/widget/TextView;

    const v7, 0x7f0b01e2

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->date:Landroid/widget/TextView;

    const v7, 0x7f0b0166

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsCarrierGroup:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    const/high16 v8, -0x40800000    # -1.0f

    iput v8, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->shadeExpandedFraction:F

    iput v8, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsExpandedFraction:F

    new-instance v8, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$chipVisibilityListener$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$chipVisibilityListener$1;-><init>(Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->chipVisibilityListener:Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$chipVisibilityListener$1;

    instance-of v9, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v9, :cond_3

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0520

    iget-object v13, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    const/4 v14, 0x0

    if-nez v13, :cond_0

    move-object v12, v14

    goto :goto_0

    :cond_0
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v12

    :goto_0
    const v13, 0x7f17000b

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    const v12, 0x7f0b052c

    iget-object v13, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v13, :cond_1

    move-object v12, v14

    goto :goto_1

    :cond_1
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v12

    :goto_1
    const v13, 0x7f17000c

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    const v12, 0x7f0b0362

    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v9, v12}, Landroidx/constraintlayout/motion/widget/MotionScene;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v14

    :goto_2
    const v9, 0x7f170002

    invoke-virtual {v11, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    invoke-virtual {v14, v10, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v8, v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->chipVisibilityListener:Lcom/android/systemui/qs/ChipVisibilityListener;

    :cond_3
    new-instance v2, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$bindConfigurationListener$listener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$bindConfigurationListener$listener$1;-><init>(Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;)V

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/util/ViewController;->init()V

    const v2, 0x7f0b00f3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/battery/BatteryMeterView;

    const/4 v3, 0x1

    iput-boolean v3, v6, Lcom/android/systemui/battery/BatteryMeterViewController;->mIgnoreTunerUpdates:Z

    iget-boolean v8, v6, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    const/4 v9, 0x0

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    iget-object v8, v6, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v10, v6, Lcom/android/systemui/battery/BatteryMeterViewController;->mTunable:Lcom/android/systemui/battery/BatteryMeterViewController$2;

    invoke-virtual {v8, v10}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iput-boolean v9, v6, Lcom/android/systemui/battery/BatteryMeterViewController;->mIsSubscribedForTunerUpdates:Z

    :goto_3
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Lcom/android/systemui/battery/BatteryMeterView;->setPercentShowMode(I)V

    const v2, 0x7f0b0634

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    new-instance v6, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-direct {v6, v2, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/flags/FeatureFlags;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v8, 0x1010036

    invoke-static {v2, v8}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;->setTint(I)V

    sget-object v2, Lcom/android/systemui/flags/Flags;->COMBINED_STATUS_BAR_SIGNAL_ICONS:Lcom/android/systemui/flags/BooleanFlag;

    invoke-interface {v5, v2}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/BooleanFlag;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10408a4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1040893

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_4

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10408a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_4
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    iput-object v3, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mView:Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    new-instance v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v5, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v6, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    iget-object v7, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    iget-object v8, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v9, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

    iget-object v10, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mContext:Landroid/content/Context;

    iget-object v11, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v12, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v13, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->mSlotIndexResolver:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;

    move-object v2, v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    invoke-direct/range {v2 .. v12}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    move-object/from16 v1, p8

    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->updateVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->updateConstraints()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->visible:Z

    const-string/jumbo v0, "visible: "

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(ZLjava/lang/String;Ljava/io/PrintWriter;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->shadeExpanded:Z

    const-string/jumbo v0, "shadeExpanded: "

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(ZLjava/lang/String;Ljava/io/PrintWriter;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->shadeExpandedFraction:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo v0, "shadeExpandedFraction: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->active:Z

    const-string v0, "active: "

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(ZLjava/lang/String;Ljava/io/PrintWriter;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsExpandedFraction:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo v0, "qsExpandedFraction: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsScrollY:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "qsScrollY: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->combinedHeaders:Z

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    move-object p2, p0

    check-cast p2, Landroidx/constraintlayout/motion/widget/MotionLayout;

    check-cast p0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mCurrentState:I

    const p2, 0x7f0b0520

    if-ne p0, p2, :cond_0

    const-string p0, "QQS Header"

    goto :goto_0

    :cond_0
    const p2, 0x7f0b052c

    if-ne p0, p2, :cond_1

    const-string p0, "QS Header"

    goto :goto_0

    :cond_1
    const p2, 0x7f0b0362

    if-ne p0, p2, :cond_2

    const-string p0, "Large Screen Header"

    goto :goto_0

    :cond_2
    const-string p0, "Unknown state"

    :goto_0
    const-string p2, "currentState: "

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final updateConstraints()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->combinedHeaders:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->active:Z

    if-eqz v1, :cond_1

    const p0, 0x7f0b0363

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0b02ef

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->updatePosition$2()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->active:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->combinedHeaders:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsScrollY:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setScrollY(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updatePosition$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->active:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->visible:Z

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsExpandedFraction:F

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public final updateVisibility()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->combinedHeaders:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsDisabled:Z

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->shadeExpanded:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->header:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->visible:Z

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->visible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setListening(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->visible:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-boolean v0, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlots(Ljava/util/List;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->carrierIconSlots:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$updateListeners$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController$updateListeners$1;-><init>(Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mOnSingleCarrierChangedListener:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->qsCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mOnSingleCarrierChangedListener:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->statusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LargeScreenShadeHeaderController;->iconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    :cond_8
    :goto_2
    return-void
.end method
