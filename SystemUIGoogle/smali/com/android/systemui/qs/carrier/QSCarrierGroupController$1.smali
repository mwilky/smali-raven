.class Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;
.super Ljava/lang/Object;
.source "QSCarrierGroupController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/carrier/QSCarrierGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCallIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "QSCarrierGroup"

    if-lt v0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMobileDataIndicators - slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid SIM slot index for subscription: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$300(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/util/CarrierConfigTracker;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/util/CarrierConfigTracker;->getCallStrengthConfig(I)Z

    move-result p2

    iget v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v7, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v10

    const-string v8, ""

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v1, p2, v0

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$400(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[I

    move-result-object v1

    aget v6, v1, v0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$500(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Ljava/lang/String;

    move-result-object v1

    aget-object v7, v1, v0

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v10

    const-string v8, ""

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object p2, p1, v0

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v5, 0x1

    sget v6, Lcom/android/systemui/R$drawable;->ic_qs_sim_card:I

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v10

    const-string v7, ""

    const-string v8, ""

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object p2, p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$400(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[I

    move-result-object v1

    iget v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    aput v4, v1, v0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$500(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    aput-object v4, v1, v0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    if-eq v1, v2, :cond_7

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p2}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p2

    new-instance v1, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v7, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v10

    const-string v8, ""

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v1, p2, v0

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/carrier/CellSignalState;

    const/4 v5, 0x1

    sget v6, Lcom/android/systemui/R$drawable;->ic_qs_sim_card:I

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v10

    const-string v7, ""

    const-string v8, ""

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object p2, p1, v0

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    iget v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->subId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->getSlotIndex(I)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "QSCarrierGroup"

    if-lt v0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setMobileDataIndicators - slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid SIM slot index for subscription: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->subId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    new-instance v9, Lcom/android/systemui/qs/carrier/CellSignalState;

    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iget v4, v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iget-object v5, v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->typeContentDescription:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p1, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataIndicators;->roaming:Z

    iget-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$000(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Z

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/qs/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v9, v1, v0

    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNoSims(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {v1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$100(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)[Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/carrier/CellSignalState;->changeVisibility(Z)Lcom/android/systemui/qs/carrier/CellSignalState;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$1;->this$0:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-static {p0}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->access$200(Lcom/android/systemui/qs/carrier/QSCarrierGroupController;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$H;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
