.class public Lcom/android/server/tare/Agent$TotalDeltaCalculator;
.super Ljava/lang/Object;
.source "Agent.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/Agent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TotalDeltaCalculator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/server/tare/Agent$OngoingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public mLedger:Lcom/android/server/tare/Ledger;

.field public mNow:J

.field public mNowElapsed:J

.field public mTotal:J

.field public final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTotal(Lcom/android/server/tare/Agent$TotalDeltaCalculator;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/tare/Agent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->this$0:Lcom/android/server/tare/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$TotalDeltaCalculator-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;-><init>(Lcom/android/server/tare/Agent;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/tare/Agent$OngoingEvent;)V
    .locals 9

    iget-wide v0, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    iget-object v2, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->this$0:Lcom/android/server/tare/Agent;

    iget-object v4, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mLedger:Lcom/android/server/tare/Ledger;

    iget-wide v5, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNowElapsed:J

    iget-wide v7, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNow:J

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/tare/Agent;->-$$Nest$mgetActualDeltaLocked(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEvent;Lcom/android/server/tare/Ledger;JJ)Lcom/android/server/tare/EconomicPolicy$Cost;

    move-result-object p1

    iget-wide v2, p1, Lcom/android/server/tare/EconomicPolicy$Cost;->price:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/tare/Agent$OngoingEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->accept(Lcom/android/server/tare/Agent$OngoingEvent;)V

    return-void
.end method

.method public reset(Lcom/android/server/tare/Ledger;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mLedger:Lcom/android/server/tare/Ledger;

    iput-wide p2, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNowElapsed:J

    iput-wide p4, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mNow:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/server/tare/Agent$TotalDeltaCalculator;->mTotal:J

    return-void
.end method
