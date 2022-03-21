.class Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;
.super Ljava/lang/Object;
.source "StatusBarGoogle.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZ)V
    .locals 2

    iget-object p2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p2, p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$002(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;I)I

    iget-object p2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p2}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$100(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$200(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x5dc

    cmp-long p2, p2, v0

    const/4 p3, 0x0

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p2, p3}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$302(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;Z)Z

    :cond_0
    iget-object p2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p2, p3}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$402(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;Z)Z

    :cond_1
    sget-boolean p2, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onBatteryLevelChanged(): level="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wlc="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$500(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wlcs="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$300(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",rtxs="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$400(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",this="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarGoogle"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onReverseChanged(ZILjava/lang/String;)V
    .locals 5

    if-nez p1, :cond_1

    if-ltz p2, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$600(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$300(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$400(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$402(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {v2}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$200(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    sub-long v0, v2, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {v2}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$000(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)I

    move-result v3

    invoke-static {v2, v3, p2, v0, v1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$700(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;IIJ)V

    :cond_1
    sget-boolean v0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReverseChanged(): rtx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",rxlevel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$000(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",level="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",name="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",wlc="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$800(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->isWirelessCharging()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",wlcs="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$300(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",rtxs="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;

    invoke-static {p1}, Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;->access$400(Lcom/google/android/systemui/statusbar/phone/StatusBarGoogle;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarGoogle"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
