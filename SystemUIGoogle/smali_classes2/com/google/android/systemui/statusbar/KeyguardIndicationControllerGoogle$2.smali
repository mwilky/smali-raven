.class Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;
.super Ljava/lang/Object;
.source "KeyguardIndicationControllerGoogle.java"

# interfaces
.implements Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyInterface()V
    .locals 0

    return-void
.end method

.method public onReceiveStatus(Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$100(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isStageActiveOrEnabled(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$102(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)Z

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$200(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)J

    move-result-wide v3

    add-int/lit8 p2, p2, 0x1d

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v7, p2

    invoke-virtual {v1, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {p1, v5, v6}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$202(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;J)J

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$200(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)J

    move-result-wide p1

    sub-long/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {v3}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$100(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z

    move-result v3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$100(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p0, v2}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$300(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)V

    :cond_2
    return-void
.end method
