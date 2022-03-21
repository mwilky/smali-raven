.class public Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.super Ljava/lang/Object;
.source "QSCarrierGroupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SubscriptionManagerSlotIndexResolver;,
        Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;,
        Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;,
        Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;,
        Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;,
        Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBgHandler:Landroid/os/Handler;

.field private final mCallback:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;

.field private final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field private mCarrierDividers:[Landroid/view/View;

.field private mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

.field private final mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

.field private final mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

.field private mIsSingleCarrier:Z

.field private mLastSignalLevel:[I

.field private mLastSignalLevelDescription:[Ljava/lang/String;

.field private mListening:Z

.field private mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

.field private final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field private final mNoSimTextView:Landroid/widget/TextView;

.field private mOnSingleCarrierChangedListener:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;

.field private final mProviderModel:Z

.field private final mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

.field private final mSlotIndexResolver:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;


# direct methods
.method public static synthetic $r8$lambda$E69Fd2ATEWm2a5j1VRN3UOrfG2M(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->updateListeners()V

    return-void
.end method

.method public static synthetic $r8$lambda$mnWD-tCaWBdbT9c_4VyaMwdW66w(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->handleUpdateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wGn5mJHe17xtDa4qO-pWgn8KTJY(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->handleUpdateState()V

    return-void
.end method

.method public static synthetic $r8$lambda$zzAMabyS67V05gIa4sMIlM-l-30(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x3

    new-array v4, v3, [Lcom/android/systemui/qs/carrier/CellSignalState;

    iput-object v4, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v4, 0x2

    new-array v5, v4, [Landroid/view/View;

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    new-array v5, v3, [Lcom/android/systemui/qs/carrier/QSCarrier;

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    new-array v5, v3, [I

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevel:[I

    new-array v5, v3, [Ljava/lang/String;

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    new-instance v5, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    invoke-virtual/range {p9 .. p9}, Lcom/android/systemui/flags/FeatureFlags;->isCombinedStatusBarSignalIconsEnabled()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iput-boolean v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    goto :goto_0

    :cond_0
    iput-boolean v7, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    :goto_0
    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    move-object/from16 v5, p6

    invoke-virtual {v5, v7}, Lcom/android/keyguard/CarrierTextManager$Builder;->setShowAirplaneMode(Z)Lcom/android/keyguard/CarrierTextManager$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/keyguard/CarrierTextManager$Builder;->setShowMissingSim(Z)Lcom/android/keyguard/CarrierTextManager$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/CarrierTextManager$Builder;->build()Lcom/android/keyguard/CarrierTextManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v5, p10

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSlotIndexResolver:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;

    new-instance v5, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroup;->getNoSimTextView()Landroid/widget/TextView;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    new-instance v9, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda3;

    invoke-direct {v9, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    new-instance v10, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    move-object/from16 v11, p4

    invoke-direct {v8, v11, v9, v10}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;-><init>(Landroid/os/Looper;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    iput-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    new-instance v9, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;

    invoke-direct {v9, v8}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;)V

    iput-object v9, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCallback:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;

    iget-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroup;->getCarrier1View()Lcom/android/systemui/qs/carrier/QSCarrier;

    move-result-object v9

    aput-object v9, v8, v7

    iget-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroup;->getCarrier2View()Lcom/android/systemui/qs/carrier/QSCarrier;

    move-result-object v9

    aput-object v9, v8, v6

    iget-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroup;->getCarrier3View()Lcom/android/systemui/qs/carrier/QSCarrier;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v4, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroup;->getCarrierDivider1()Landroid/view/View;

    move-result-object v8

    aput-object v8, v4, v7

    iget-object v4, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroup;->getCarrierDivider2()Landroid/view/View;

    move-result-object v8

    aput-object v8, v4, v6

    move v4, v7

    :goto_1
    if-ge v4, v3, :cond_1

    iget-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    new-instance v16, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v10, 0x1

    sget v11, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    sget v9, Lcom/android/settingslib/AccessibilityContentDescriptions;->NO_CALLING:I

    invoke-virtual {v2, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    iget-boolean v15, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v13, ""

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v16, v8, v4

    iget-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevel:[I

    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    aget v9, v9, v7

    aput v9, v8, v4

    iget-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    sget-object v9, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v9, v7

    invoke-virtual {v2, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v8, v8, v4

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->computeIsSingleCarrier()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    new-instance v2, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$2;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/util/CarrierConfigTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevel:[I

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    return-object p0
.end method

.method private computeIsSingleCarrier()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    if-ne v2, p0, :cond_2

    move v0, p0

    :cond_2
    return v0
.end method

.method private handleUpdateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    const/4 v3, 0x3

    if-nez v0, :cond_6

    iget-boolean v0, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    if-eqz v0, :cond_6

    new-array v0, v3, [Z

    iget-object v4, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v4, v4

    iget-object v5, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->subscriptionIds:[I

    array-length v5, v5

    const-string v6, "QSCarrierGroup"

    if-ne v4, v5, :cond_5

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    iget-object v5, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    iget-object v5, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result v5

    if-lt v5, v3, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateInfoCarrier - slot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid SIM slot index for subscription: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->subscriptionIds:[I

    aget v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v8, v7, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/systemui/qs/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v8

    aput-object v8, v7, v5

    aput-boolean v9, v0, v5

    iget-object v7, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v7, v7, v5

    iget-object v8, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->listOfCarriers:[Ljava/lang/CharSequence;

    aget-object v8, v8, v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/qs/carrier/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v5, v7, v5

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_2
    if-ge p1, v3, :cond_8

    aget-boolean v4, v0, p1

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v5, v4, p1

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v5

    aput-object v5, v4, p1

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "Carrier information arrays not of same length"

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_3
    if-ge v0, v3, :cond_7

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v5, v4, v0

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v5

    aput-object v5, v4, v0

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v4, v4, v0

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/carrier/QSCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->handleUpdateState()V

    return-void
.end method

.method private handleUpdateState()V
    .locals 15

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->computeIsSingleCarrier()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v6, v5, v4

    iget-boolean v6, v6, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v6, :cond_1

    aget-object v6, v5, v4

    iget v6, v6, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    sget v7, Lcom/android/systemui/R$drawable;->ic_qs_sim_card:I

    if-ne v6, v7, :cond_1

    new-instance v6, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v9, 0x1

    sget v10, Lcom/android/systemui/R$drawable;->ic_blank:I

    const/4 v13, 0x0

    iget-boolean v14, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v11, ""

    const-string v12, ""

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v6, v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6, v0}, Lcom/android/systemui/qs/carrier/QSCarrier;->updateState(Lcom/android/systemui/qs/carrier/CellSignalState;Z)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v5, v4, v3

    iget-boolean v5, v5, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    const/16 v6, 0x8

    if-eqz v5, :cond_4

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v1, v4, v1

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_5

    aget-object v1, v4, v5

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-nez v1, :cond_7

    :cond_5
    aget-object v1, v4, v3

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v1, :cond_6

    aget-object v1, v4, v5

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v6

    :cond_7
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    if-eq v1, v0, :cond_8

    iput-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mOnSingleCarrierChangedListener:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;

    if-eqz p0, :cond_8

    invoke-interface {p0, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;->onSingleCarrierChanged(Z)V

    :cond_8
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateListeners()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/connectivity/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCallback:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/CarrierTextManager;->setListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSignalCallback:Lcom/android/systemui/statusbar/connectivity/SignalCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierTextManager;->setListening(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getSlotIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSlotIndexResolver:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method public isSingleCarrier()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    return p0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnSingleCarrierChangedListener(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mOnSingleCarrierChangedListener:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;

    return-void
.end method
