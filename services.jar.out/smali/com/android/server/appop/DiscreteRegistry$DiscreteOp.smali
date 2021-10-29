.class final Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscreteOp"
.end annotation


# instance fields
.field mAttributedOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/DiscreteRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/DiscreteRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->offsetHistory(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    return-void
.end method

.method private applyToHistory(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v5, 0x0

    move v12, v5

    :goto_1
    if-ge v12, v15, :cond_2

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    const/4 v11, 0x0

    iget v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-eqz v1, :cond_1

    iget v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v10

    move-object/from16 v6, p3

    move/from16 v7, p2

    move-object v8, v4

    move/from16 v9, p4

    move-object v0, v10

    move-object v10, v13

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    new-instance v6, Landroid/app/AppOpsManager$OpEventProxyInfo;

    iget v7, v5, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    iget-object v8, v5, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Landroid/app/AppOpsManager$OpEventProxyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v6

    move-object v0, v11

    goto :goto_2

    :cond_0
    move-object v0, v10

    :cond_1
    move-object v0, v11

    :goto_2
    iget v10, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v11, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget-wide v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v5, v6}, Lcom/android/server/appop/DiscreteRegistry;->access$2300(J)J

    move-result-wide v16

    iget-wide v5, v13, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v5, v6}, Lcom/android/server/appop/DiscreteRegistry;->access$2400(J)J

    move-result-wide v18

    move-object/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v4

    move/from16 v20, v12

    move-object/from16 v21, v13

    move-wide/from16 v12, v16

    move-object/from16 v17, v14

    move/from16 v22, v15

    move-wide/from16 v14, v18

    move-object/from16 v16, v0

    invoke-virtual/range {v5 .. v16}, Landroid/app/AppOpsManager$HistoricalOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    add-int/lit8 v12, v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v14, v17

    move/from16 v15, v22

    goto :goto_1

    :cond_2
    move/from16 v20, v12

    move-object/from16 v17, v14

    move/from16 v22, v15

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Attribution: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge p5, v5, :cond_0

    goto :goto_1

    :cond_0
    sub-int v5, v3, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_1
    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, p2, p3, v7}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->access$2500(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private filter(JJILjava/lang/String;IILjava/lang/String;ILandroid/util/ArrayMap;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    nop

    invoke-direct {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    move-object v6, v5

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v16, p11

    invoke-static/range {v6 .. v16}, Lcom/android/server/appop/DiscreteRegistry;->access$2200(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$deserialize$0(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private offsetHistory(J)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    new-instance v15, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-object v8, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    iget-wide v9, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    sub-long v9, v9, p1

    iget-wide v11, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    iget v13, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    iget v14, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v7, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v0, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v16, v7

    move-object v7, v15

    move/from16 v17, v1

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    invoke-interface {v3, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto :goto_1

    :cond_0
    move/from16 v17, v1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method addDiscreteAccess(Ljava/lang/String;IIJJII)V
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    :goto_0
    if-lez v2, :cond_6

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-static {v4, v5}, Lcom/android/server/appop/DiscreteRegistry;->access$2300(J)J

    move-result-wide v4

    invoke-static/range {p4 .. p5}, Lcom/android/server/appop/DiscreteRegistry;->access$2300(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p8

    move/from16 v12, p9

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    move/from16 v15, p2

    if-ne v4, v15, :cond_2

    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mUidState:I

    move/from16 v14, p3

    if-ne v4, v14, :cond_3

    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    move/from16 v13, p8

    if-ne v4, v13, :cond_4

    iget v4, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move/from16 v12, p9

    if-ne v4, v12, :cond_5

    invoke-static/range {p6 .. p7}, Lcom/android/server/appop/DiscreteRegistry;->access$2400(J)J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-static {v6, v7}, Lcom/android/server/appop/DiscreteRegistry;->access$2400(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    move/from16 v14, p3

    :cond_3
    move/from16 v13, p8

    :cond_4
    move/from16 v12, p9

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p8

    move/from16 v12, p9

    :goto_1
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    move-object/from16 v4, p0

    iget-object v6, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    move-object v5, v3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p3

    move/from16 v12, p2

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v5 .. v14}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method deserialize(Landroid/util/TypedXmlPullParser;J)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "a"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    const-string v4, "at"

    invoke-interface {v1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v6

    :cond_1
    :goto_1
    invoke-static {v1, v6}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "e"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "nt"

    invoke-interface {v1, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v7, -0x1

    const-string/jumbo v9, "nd"

    invoke-interface {v1, v3, v9, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v20

    const-string/jumbo v7, "us"

    invoke-interface {v1, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "f"

    invoke-interface {v1, v3, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    const/4 v8, 0x0

    const-string v9, "af"

    invoke-interface {v1, v3, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v23

    const/4 v8, -0x1

    const-string v9, "ci"

    invoke-interface {v1, v3, v9, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v24

    add-long v8, v18, v20

    cmp-long v8, v8, p2

    if-gez v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance v25, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-object v9, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->this$0:Lcom/android/server/appop/DiscreteRegistry;

    move-object/from16 v8, v25

    move-wide/from16 v10, v18

    move-wide/from16 v12, v20

    move v14, v7

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v24

    invoke-direct/range {v8 .. v17}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;-><init>(Lcom/android/server/appop/DiscreteRegistry;JJIIII)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/appop/DiscreteRegistry$DiscreteOp$$ExternalSyntheticLambda0;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->getOrCreateDiscreteOpEventsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-static {v4, v3}, Lcom/android/server/appop/DiscreteRegistry;->access$2100(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method serialize(Landroid/util/TypedXmlSerializer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v2, 0x0

    const-string v3, "a"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "at"

    invoke-interface {p1, v2, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v5, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    const-string v8, "e"

    invoke-interface {p1, v2, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-static {v9, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->access$2600(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;Landroid/util/TypedXmlSerializer;)V

    invoke-interface {p1, v2, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
