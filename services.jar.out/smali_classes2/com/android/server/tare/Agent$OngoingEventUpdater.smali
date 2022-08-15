.class public Lcom/android/server/tare/Agent$OngoingEventUpdater;
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
    name = "OngoingEventUpdater"
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
.field public mNow:J

.field public mNowElapsed:J

.field public mPkgName:Ljava/lang/String;

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/tare/Agent;


# direct methods
.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/tare/Agent$OngoingEventUpdater;ILjava/lang/String;JJ)V
    .locals 0

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->reset(ILjava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tare/Agent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->this$0:Lcom/android/server/tare/Agent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/tare/Agent;Lcom/android/server/tare/Agent$OngoingEventUpdater-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;-><init>(Lcom/android/server/tare/Agent;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/tare/Agent$OngoingEvent;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->this$0:Lcom/android/server/tare/Agent;

    iget v3, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mUserId:I

    iget-object v4, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mPkgName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    iget-object v6, v1, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    iget-wide v7, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNowElapsed:J

    iget-wide v9, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNow:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/android/server/tare/Agent;->-$$Nest$mstopOngoingActionLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JJZZ)V

    iget-object v13, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->this$0:Lcom/android/server/tare/Agent;

    iget v14, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mUserId:I

    iget-object v15, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mPkgName:Ljava/lang/String;

    iget v2, v1, Lcom/android/server/tare/Agent$OngoingEvent;->eventId:I

    iget-object v1, v1, Lcom/android/server/tare/Agent$OngoingEvent;->tag:Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNowElapsed:J

    const/16 v20, 0x0

    move/from16 v16, v2

    move-object/from16 v17, v1

    move-wide/from16 v18, v3

    invoke-static/range {v13 .. v20}, Lcom/android/server/tare/Agent;->-$$Nest$mnoteOngoingEventLocked(Lcom/android/server/tare/Agent;ILjava/lang/String;ILjava/lang/String;JZ)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/tare/Agent$OngoingEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/tare/Agent$OngoingEventUpdater;->accept(Lcom/android/server/tare/Agent$OngoingEvent;)V

    return-void
.end method

.method public final reset(ILjava/lang/String;JJ)V
    .locals 0

    iput p1, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mUserId:I

    iput-object p2, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mPkgName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNow:J

    iput-wide p5, p0, Lcom/android/server/tare/Agent$OngoingEventUpdater;->mNowElapsed:J

    return-void
.end method
