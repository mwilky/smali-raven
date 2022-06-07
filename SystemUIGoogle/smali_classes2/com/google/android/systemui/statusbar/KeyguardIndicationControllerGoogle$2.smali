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
    .locals 8

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$100(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p1, p2}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isActive(Ljava/lang/String;I)Z

    move-result p1

    invoke-static {v1, p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$102(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)Z

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$200(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)J

    move-result-wide v1

    add-int/lit8 p2, p2, 0x1d

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v3, v6

    invoke-static {p1, v3, v4}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$202(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;J)J

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$200(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {v1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$100(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$100(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1e

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;->this$0:Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->access$300(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)V

    :cond_1
    return-void
.end method
