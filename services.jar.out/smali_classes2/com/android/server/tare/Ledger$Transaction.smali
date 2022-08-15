.class public Lcom/android/server/tare/Ledger$Transaction;
.super Ljava/lang/Object;
.source "Ledger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Ledger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# instance fields
.field public final ctp:J

.field public final delta:J

.field public final endTimeMs:J

.field public final eventId:I

.field public final startTimeMs:J

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJILjava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    iput-wide p3, p0, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    iput p5, p0, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    iput-object p6, p0, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    iput-wide p9, p0, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    return-void
.end method
