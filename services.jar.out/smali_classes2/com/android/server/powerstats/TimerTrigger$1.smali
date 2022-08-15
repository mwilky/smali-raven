.class public Lcom/android/server/powerstats/TimerTrigger$1;
.super Ljava/lang/Object;
.source "TimerTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/TimerTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/TimerTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger$1;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$1;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-static {v0}, Lcom/android/server/powerstats/TimerTrigger;->-$$Nest$fgetmHandler(Lcom/android/server/powerstats/TimerTrigger;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/powerstats/TimerTrigger$1;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-static {v1}, Lcom/android/server/powerstats/TimerTrigger;->-$$Nest$fgetmLogDataLowFrequency(Lcom/android/server/powerstats/TimerTrigger;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/server/powerstats/TimerTrigger$1;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/powerstats/PowerStatsLogTrigger;->logPowerStatsData(I)V

    return-void
.end method
