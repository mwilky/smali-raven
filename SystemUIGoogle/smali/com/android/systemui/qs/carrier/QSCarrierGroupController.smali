.class public final Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
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
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mCallback:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;

.field public final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public mCarrierDividers:[Landroid/view/View;

.field public mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

.field public final mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

.field public final mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

.field public mIsSingleCarrier:Z

.field public mLastSignalLevel:[I

.field public mLastSignalLevelDescription:[Ljava/lang/String;

.field public mListening:Z

.field public mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mNoSimTextView:Landroid/widget/TextView;

.field public mOnSingleCarrierChangedListener:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;

.field public final mProviderModel:Z

.field public final mSignalCallback:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;

.field public final mSlotIndexResolver:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroup;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x3

    new-array v5, v4, [Lcom/android/systemui/qs/carrier/CellSignalState;

    iput-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v5, 0x2

    new-array v6, v5, [Landroid/view/View;

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    new-array v6, v4, [Lcom/android/systemui/qs/carrier/QSCarrier;

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    new-array v6, v4, [I

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevel:[I

    new-array v6, v4, [Ljava/lang/String;

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    new-instance v6, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;

    invoke-direct {v6, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSignalCallback:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;

    sget-object v6, Lcom/android/systemui/flags/Flags;->COMBINED_STATUS_BAR_SIGNAL_ICONS:Lcom/android/systemui/flags/BooleanFlag;

    move-object/from16 v7, p9

    invoke-interface {v7, v6}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled(Lcom/android/systemui/flags/BooleanFlag;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    iput-boolean v8, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    goto :goto_0

    :cond_0
    iput-boolean v7, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    :goto_0
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v6, p3

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iput-boolean v7, v2, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowAirplaneMode:Z

    iput-boolean v7, v2, Lcom/android/keyguard/CarrierTextManager$Builder;->mShowMissingSim:Z

    invoke-virtual/range {p6 .. p6}, Lcom/android/keyguard/CarrierTextManager$Builder;->build()Lcom/android/keyguard/CarrierTextManager;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierTextManager:Lcom/android/keyguard/CarrierTextManager;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSlotIndexResolver:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;

    new-instance v2, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda4;

    invoke-direct {v2, v8, v0}, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0b0491

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    new-instance v9, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;

    invoke-direct {v9, v8, v0}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    new-instance v10, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;

    invoke-direct {v10, v5, v0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    move-object/from16 v11, p4

    invoke-direct {v6, v11, v9, v10}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;-><init>(Landroid/os/Looper;Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda1;Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda0;)V

    iput-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    new-instance v9, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;

    invoke-direct {v9, v6}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;)V

    iput-object v9, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCallback:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Callback;

    iget-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    const v9, 0x7f0b0163

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/carrier/QSCarrier;

    aput-object v9, v6, v7

    iget-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    const v9, 0x7f0b0164

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/carrier/QSCarrier;

    aput-object v9, v6, v8

    iget-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    const v9, 0x7f0b0165

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/carrier/QSCarrier;

    aput-object v9, v6, v5

    iget-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    const v6, 0x7f0b0523

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    const v6, 0x7f0b0524

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    aput-object v6, v5, v8

    move v5, v7

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    new-instance v16, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v12, 0x1

    const v11, 0x7f080644

    const v9, 0x7f130086

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    iget-boolean v14, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v15, ""

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v16, v6, v5

    iget-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevel:[I

    sget-object v9, Lcom/android/settingslib/mobile/TelephonyIcons;->MOBILE_CALL_STRENGTH_ICONS:[I

    aget v9, v9, v7

    aput v9, v6, v5

    iget-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    sget-object v9, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->PHONE_SIGNAL_STRENGTH:[I

    aget v9, v9, v7

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    iget-object v6, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v2, v7

    move v3, v2

    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-ne v3, v8, :cond_4

    move v7, v8

    :cond_4
    iput-boolean v7, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    new-instance v2, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$2;-><init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public getSlotIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mSlotIndexResolver:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$SlotIndexResolver;->getSlotIndex(I)I

    move-result p0

    return p0
.end method

.method public final handleUpdateState()V
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
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    move v3, v0

    :goto_2
    if-ge v3, v4, :cond_5

    iget-object v5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v6, v5, v3

    iget-boolean v7, v6, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v7, :cond_4

    iget v6, v6, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    const v7, 0x7f08064c

    if-ne v6, v7, :cond_4

    new-instance v6, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v11, 0x1

    const v10, 0x7f080479

    const/4 v12, 0x0

    iget-boolean v13, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v9, ""

    const-string v14, ""

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v6, v5, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v0

    :goto_3
    if-ge v3, v4, :cond_6

    iget-object v5, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/qs/carrier/QSCarrier;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6, v2}, Lcom/android/systemui/qs/carrier/QSCarrier;->updateState(Lcom/android/systemui/qs/carrier/CellSignalState;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v5, v4, v0

    iget-boolean v5, v5, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    const/16 v6, 0x8

    if-eqz v5, :cond_7

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v4, :cond_7

    move v4, v0

    goto :goto_4

    :cond_7
    move v4, v6

    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierDividers:[Landroid/view/View;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v1, v4, v1

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    const/4 v5, 0x2

    if-eqz v1, :cond_8

    aget-object v1, v4, v5

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-nez v1, :cond_a

    :cond_8
    aget-object v1, v4, v0

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v1, :cond_9

    aget-object v1, v4, v5

    iget-boolean v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v0, v6

    :cond_a
    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    if-eq v0, v2, :cond_b

    iput-boolean v2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mIsSingleCarrier:Z

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mOnSingleCarrierChangedListener:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;

    if-eqz p0, :cond_b

    invoke-interface {p0, v2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$OnSingleCarrierChangedListener;->onSingleCarrierChanged(Z)V

    :cond_b
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mListening:Z

    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
