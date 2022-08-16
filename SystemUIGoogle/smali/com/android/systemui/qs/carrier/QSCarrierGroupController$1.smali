.class public final Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;
.super Ljava/lang/Object;
.source "QSCarrierGroupController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setCallIndicator(Lcom/android/systemui/statusbar/connectivity/IconState;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-boolean v4, v3, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "QSCarrierGroup"

    if-lt v3, v4, :cond_1

    const-string/jumbo v0, "setMobileDataIndicators - slot: "

    invoke-static {v0, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const-string v0, "Invalid SIM slot index for subscription: "

    invoke-static {v0, v2, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v4, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v4, v4, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    invoke-virtual {v4, v2}, Lcom/android/systemui/util/CarrierConfigTracker;->getCallStrengthConfig(I)Z

    move-result v2

    iget v6, v1, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    const/4 v11, 0x1

    const v4, 0x7f080644

    if-ne v6, v4, :cond_5

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    if-eqz v4, :cond_3

    iget-object v2, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v12, v2, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    new-instance v13, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v7, 0x1

    iget-object v5, v1, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    const/4 v8, 0x0

    iget-boolean v9, v2, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v10, ""

    move-object v4, v13

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v13, v12, v3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v2, v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    new-instance v12, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v7, 0x1

    iget-object v4, v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevel:[I

    aget v6, v4, v3

    iget-object v4, v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    aget-object v5, v4, v3

    const/4 v8, 0x0

    iget-boolean v9, v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v10, ""

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v12, v2, v3

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v2, v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    new-instance v12, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v7, 0x1

    const v6, 0x7f08064c

    const/4 v8, 0x0

    iget-boolean v9, v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v5, ""

    const-string v10, ""

    move-object v4, v12

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v12, v2, v3

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v0, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevel:[I

    aput v6, v5, v3

    iget-object v5, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mLastSignalLevelDescription:[Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    aput-object v1, v5, v3

    iget-object v12, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v5, v12, v3

    iget v5, v5, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    if-eq v5, v4, :cond_7

    if-eqz v2, :cond_6

    new-instance v2, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v9, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v10, ""

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v2, v12, v3

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/16 v16, 0x1

    const v15, 0x7f08064c

    const/16 v17, 0x0

    iget-boolean v2, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    const-string v14, ""

    const-string v19, ""

    move-object v13, v1

    move/from16 v18, v2

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v1, v12, v3

    :goto_1
    iget-object v0, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "QSCarrierGroup"

    if-lt v0, v1, :cond_1

    const-string/jumbo p0, "setMobileDataIndicators - slot: "

    invoke-static {p0, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string p0, "Invalid SIM slot index for subscription: "

    invoke-static {p0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v1, v1, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    new-instance v9, Lcom/android/systemui/qs/carrier/CellSignalState;

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/connectivity/IconState;

    iget-boolean v5, v2, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    iget v4, v2, Lcom/android/systemui/statusbar/connectivity/IconState;->icon:I

    iget-object v3, v2, Lcom/android/systemui/statusbar/connectivity/IconState;->contentDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->roaming:Z

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-boolean v7, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mProviderModel:Z

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    aput-object v9, v1, v0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setNoSims(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object v0, v0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mInfos:[Lcom/android/systemui/qs/carrier/CellSignalState;

    aget-object v1, v0, p2

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->mMainHandler:Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
