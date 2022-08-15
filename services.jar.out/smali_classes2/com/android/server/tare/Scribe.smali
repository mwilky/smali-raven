.class public Lcom/android/server/tare/Scribe;
.super Ljava/lang/Object;
.source "Scribe.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAnalyst:Lcom/android/server/tare/Analyst;

.field public final mCleanRunnable:Ljava/lang/Runnable;

.field public final mIrs:Lcom/android/server/tare/InternalResourceService;

.field public mLastReclamationTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation
.end field

.field public final mLedgers:Landroid/util/SparseArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation
.end field

.field public mRemainingConsumableCakes:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation
.end field

.field public mSatiatedConsumptionLimit:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation
.end field

.field public final mStateFile:Landroid/util/AtomicFile;

.field public final mWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0gtn6R3Vmum7PweFgnG2JMPIuTU(Lcom/android/server/tare/Scribe;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->cleanupLedgers()V

    return-void
.end method

.method public static synthetic $r8$lambda$8CMNXiXstghl9Sv_j8dc2t-uUm8(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/tare/Scribe;->lambda$dumpLocked$0(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJ_5syXNQUTlPkQFbHqUe0XRNs4(Lcom/android/server/tare/Scribe;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->writeState()V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/tare/Scribe;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;)V
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tare/Scribe;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    iput-object p2, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    new-instance p1, Ljava/io/File;

    const-string p2, "tare"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    new-instance p3, Landroid/util/AtomicFile;

    new-instance v0, Ljava/io/File;

    const-string v1, "state.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v0, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    return-void
.end method

.method private synthetic lambda$dumpLocked$0(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V
    .locals 1

    invoke-static {p3, p4}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {p0, p3, p4}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " (system)"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_1

    const p0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/16 p0, 0x19

    :goto_0
    invoke-virtual {p5, p1, p0}, Lcom/android/server/tare/Ledger;->dump(Landroid/util/IndentingPrintWriter;I)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static readLedgerFromXml(Landroid/util/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;J)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const-string v3, "pkgName"

    invoke-interface {v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "currentBalance"

    invoke-interface {v0, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v6, p1

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v7, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is saved to disk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_8

    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    const-string v7, "ledger"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_3

    :cond_1
    const/4 v9, 0x2

    if-ne v7, v9, :cond_7

    const-string v9, "transaction"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    sget-boolean v7, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v9, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Starting ledger tag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v8, "tag"

    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v8, "startTime"

    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    const-string v8, "endTime"

    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    const-string v8, "eventId"

    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    const-string v8, "delta"

    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    const-string v8, "ctp"

    invoke-interface {v0, v2, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v8, v12, p2

    if-gtz v8, :cond_5

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v8, "Skipping event because it\'s too old."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    new-instance v7, Lcom/android/server/tare/Ledger$Transaction;

    move-object v9, v7

    invoke-direct/range {v9 .. v19}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    goto :goto_0

    :cond_7
    :goto_2
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event: ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_8
    :goto_3
    if-nez v6, :cond_9

    return-object v2

    :cond_9
    new-instance v0, Lcom/android/server/tare/Ledger;

    invoke-direct {v0, v4, v5, v1}, Lcom/android/server/tare/Ledger;-><init>(JLjava/util/List;)V

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static readReportFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    const/4 v1, 0x0

    const-string v2, "discharge"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const-string v2, "batteryLevel"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-string v2, "profit"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    const-string v2, "numProfits"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const-string v2, "loss"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    const-string v2, "numLoss"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    const-string v2, "rewards"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    const-string v2, "numRewards"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    const-string v2, "posRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    const-string v2, "numPosRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    const-string v2, "negRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    const-string v2, "numNegRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    return-object v0
.end method

.method public static writeReport(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "report"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const-string v3, "discharge"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-string v3, "batteryLevel"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    const-string v4, "profit"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const-string v3, "numProfits"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    const-string v4, "loss"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    const-string v3, "numLoss"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    const-string v4, "rewards"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    const-string v3, "numRewards"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    const-string v4, "posRegulations"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    const-string v3, "numPosRegulations"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    const-string v4, "negRegulations"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget p1, p1, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    const-string v2, "numNegRegulations"

    invoke-interface {p0, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeTransaction(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "transaction"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    const-string v4, "startTime"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    const-string v4, "endTime"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    const-string v3, "eventId"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "tag"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-string v4, "delta"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    const-string p1, "ctp"

    invoke-interface {p0, v0, p1, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public adjustRemainingConsumableCakesLocked(J)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    :cond_0
    return-void
.end method

.method public final cleanupLedgers()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide v1, 0x7fffffffffffffffL

    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_1

    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/tare/Ledger;

    const-wide/32 v7, 0x5265c00

    invoke-virtual {v6, v7, v8}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)V

    invoke-virtual {v6}, Lcom/android/server/tare/Ledger;->getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-wide v6, v6, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public discardLedgerLocked(ILjava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public dumpLocked(Landroid/util/IndentingPrintWriter;Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    const-string v0, "Ledgers:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;Z)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCakesInCirculationForLoggingLocked()J
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/Ledger;

    invoke-virtual {v4}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getLastReclamationTimeLocked()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    return-wide v0
.end method

.method public getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/Ledger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/tare/Ledger;

    invoke-direct {v0}, Lcom/android/server/tare/Ledger;-><init>()V

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getLedgersLocked()Landroid/util/SparseArrayMap;
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method public getRemainingConsumableCakesLocked()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    return-wide v0
.end method

.method public getSatiatedConsumptionLimitLocked()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method public loadFromDiskLocked()V
    .locals 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tare/Scribe;->recordExists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    iput-wide v1, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v2}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_2

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    if-nez v7, :cond_1

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v4, v0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v5

    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v6

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_4

    if-eq v6, v8, :cond_4

    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    goto :goto_1

    :cond_4
    if-ne v6, v8, :cond_7

    sget-boolean v0, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v1, "No persisted state."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v4, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    return-void

    :cond_7
    :try_start_3
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v9, "tare"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x0

    if-eqz v6, :cond_a

    const-string v6, "version"

    invoke-interface {v5, v9, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_8

    if-lez v6, :cond_a

    :cond_8
    sget-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), aborting file read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_9

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_9
    return-void

    :cond_a
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    sub-long/2addr v10, v12

    const-wide v12, 0x7fffffffffffffffL

    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6

    :goto_2
    if-eq v6, v8, :cond_14

    if-eq v6, v7, :cond_b

    goto/16 :goto_4

    :cond_b
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    goto/16 :goto_4

    :cond_c
    const/4 v14, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v3, -0x37b3aacc

    if-eq v15, v3, :cond_f

    const v3, 0x36ebcb

    if-eq v15, v3, :cond_e

    const v3, 0x2918f96e

    if-eq v15, v3, :cond_d

    goto :goto_3

    :cond_d
    const-string v3, "irs-state"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v14, 0x0

    goto :goto_3

    :cond_e
    const-string v3, "user"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v14, v8

    goto :goto_3

    :cond_f
    const-string v3, "report"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v14, v7

    :cond_10
    :goto_3
    if-eqz v14, :cond_13

    if-eq v14, v8, :cond_12

    if-eq v14, v7, :cond_11

    sget-object v3, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected tag: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_11
    invoke-static {v5}, Lcom/android/server/tare/Scribe;->readReportFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    invoke-virtual {v0, v5, v1, v10, v11}, Lcom/android/server/tare/Scribe;->readUserFromXmlLocked(Landroid/util/TypedXmlPullParser;Landroid/util/SparseArray;J)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_4

    :cond_13
    const-string v3, "lastReclamationTime"

    invoke-interface {v5, v9, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    const-string v3, "consumptionLimit"

    iget-object v6, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v6}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v14

    invoke-interface {v5, v9, v3, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v14

    iput-wide v14, v0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    iget-object v3, v0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v3}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v14

    const-string v3, "remainingConsumableCakes"

    invoke-interface {v5, v9, v3, v14, v15}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    :goto_4
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    move v6, v3

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_14
    iget-object v1, v0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v1, v2}, Lcom/android/server/tare/Analyst;->loadReports(Ljava/util/List;)V

    invoke-virtual {v0, v12, v13}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_16

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_15

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_15
    :goto_5
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v2, "Error reading state from disk"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_6
    return-void
.end method

.method public postWrite()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final readUserFromXmlLocked(Landroid/util/TypedXmlPullParser;Landroid/util/SparseArray;J)J
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;J)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "userId"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    const/16 v1, -0x2710

    if-nez p2, :cond_0

    sget-object v2, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is saved to disk"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    const-string v4, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_1
    const-string v4, "ledger"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/tare/Scribe;->readLedgerFromXml(Landroid/util/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/tare/Ledger;

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v0, v4, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/android/server/tare/Ledger;->getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-wide v4, v4, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    goto :goto_0

    :cond_6
    :goto_2
    return-wide v2
.end method

.method public recordExists()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    return p0
.end method

.method public final scheduleCleanup(J)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/32 v0, 0x36ee80

    const-wide/32 v2, 0x5265c00

    add-long/2addr p1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setConsumptionLimitLocked(J)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    sub-long/2addr v2, v0

    sub-long v0, p1, v2

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public setLastReclamationTimeLocked(J)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    return-void
.end method

.method public tearDownLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    return-void
.end method

.method public writeImmediatelyForTesting()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final writeState()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :try_start_1
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "tare"

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "version"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v5, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "irs-state"

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "lastReclamationTime"

    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    invoke-interface {v4, v6, v5, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "consumptionLimit"

    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    invoke-interface {v4, v6, v5, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "remainingConsumableCakes"

    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    invoke-interface {v4, v6, v5, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "irs-state"

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    if-ltz v5, :cond_1

    iget-object v8, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v8

    invoke-virtual {p0, v4, v8}, Lcom/android/server/tare/Scribe;->writeUserLocked(Landroid/util/TypedXmlSerializer;I)J

    move-result-wide v8

    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v5}, Lcom/android/server/tare/Analyst;->getReports()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/Analyst$Report;

    invoke-static {v4, v9}, Lcom/android/server/tare/Scribe;->writeReport(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "tare"

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v3

    :try_start_6
    sget-object v4, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v5, "Error writing state to disk"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public final writeUserLocked(Landroid/util/TypedXmlSerializer;I)J
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mIrs.getLock()"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "user"

    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "userId"

    invoke-interface {p1, v1, v3, p2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    if-ltz v3, :cond_2

    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v0, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, p2, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/Ledger;

    const-wide/32 v8, 0x5265c00

    invoke-virtual {v7, v8, v9}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)V

    const-string v8, "ledger"

    invoke-interface {p1, v1, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "pkgName"

    invoke-interface {p1, v1, v9, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v9

    const-string v6, "currentBalance"

    invoke-interface {p1, v1, v6, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v7}, Lcom/android/server/tare/Ledger;->getTransactions()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/Ledger$Transaction;

    if-nez v7, :cond_0

    iget-wide v10, v9, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_0
    invoke-static {p1, v9}, Lcom/android/server/tare/Scribe;->writeTransaction(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-wide v4
.end method
