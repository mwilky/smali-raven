.class public abstract Lcom/android/server/powerstats/PowerStatsLogTrigger;
.super Ljava/lang/Object;
.source "PowerStatsLogTrigger.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/powerstats/PowerStatsLogTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    return-void
.end method


# virtual methods
.method protected logPowerStatsData(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mPowerStatsLogger:Lcom/android/server/powerstats/PowerStatsLogger;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
