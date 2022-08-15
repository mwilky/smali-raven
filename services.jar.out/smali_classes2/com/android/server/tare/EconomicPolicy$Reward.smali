.class public Lcom/android/server/tare/EconomicPolicy$Reward;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomicPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reward"
.end annotation


# instance fields
.field public final id:I

.field public final instantReward:J

.field public final maxDailyReward:J

.field public final ongoingRewardPerSecond:J


# direct methods
.method public constructor <init>(IJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->id:I

    iput-wide p2, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->instantReward:J

    iput-wide p4, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->ongoingRewardPerSecond:J

    iput-wide p6, p0, Lcom/android/server/tare/EconomicPolicy$Reward;->maxDailyReward:J

    return-void
.end method
