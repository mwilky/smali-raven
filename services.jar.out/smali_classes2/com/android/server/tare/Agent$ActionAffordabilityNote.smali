.class public final Lcom/android/server/tare/Agent$ActionAffordabilityNote;
.super Ljava/lang/Object;
.source "Agent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionAffordabilityNote"
.end annotation


# instance fields
.field public final mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

.field public mCtp:J

.field public mIsAffordable:Z

.field public final mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field public mModifiedPrice:J


# direct methods
.method public static bridge synthetic -$$Nest$mgetCachedModifiedPrice(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getCachedModifiedPrice()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mgetCtp(Lcom/android/server/tare/Agent$ActionAffordabilityNote;)J
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->getCtp()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$msetNewAffordability(Lcom/android/server/tare/Agent$ActionAffordabilityNote;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->setNewAffordability(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomicPolicy;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    iget v2, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {p3, v2}, Lcom/android/server/tare/EconomicPolicy;->getAction(I)Lcom/android/server/tare/EconomicPolicy$Action;

    move-result-object v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid action id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-object p2, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;

    iget-object v1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    iget-object v3, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v1, v3}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    iget-object p1, p1, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getActionBill()Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    return-object p0
.end method

.method public final getCachedModifiedPrice()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    return-wide v0
.end method

.method public final getCtp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mCtp:J

    return-wide v0
.end method

.method public getListener()Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {p0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method public isCurrentlyAffordable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    return p0
.end method

.method public recalculateCosts(Lcom/android/server/tare/EconomicPolicy;ILjava/lang/String;)V
    .locals 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mActionBill:Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-virtual {v1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->getAnticipatedActions()Ljava/util/List;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move v6, v4

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    iget v8, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    move-object/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/tare/EconomicPolicy;->getCostOfAction(IILjava/lang/String;)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object v8

    iget-wide v12, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    iget v14, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->numInstantaneousCalls:I

    int-to-long v9, v14

    mul-long/2addr v9, v12

    move-object v15, v1

    iget-wide v0, v7, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->ongoingDurationMs:J

    const-wide/16 v16, 0x3e8

    div-long v18, v0, v16

    mul-long v12, v12, v18

    add-long/2addr v9, v12

    add-long/2addr v2, v9

    iget-wide v7, v8, Lcom/android/server/tare/EconomicPolicy$Cost;->costToProduce:J

    int-to-long v9, v14

    mul-long/2addr v9, v7

    div-long v0, v0, v16

    mul-long/2addr v7, v0

    add-long/2addr v9, v7

    add-long/2addr v4, v9

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    goto :goto_0

    :cond_0
    iput-wide v2, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mModifiedPrice:J

    iput-wide v4, v0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mCtp:J

    return-void
.end method

.method public final setNewAffordability(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/tare/Agent$ActionAffordabilityNote;->mIsAffordable:Z

    return-void
.end method
