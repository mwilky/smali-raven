.class final Lcom/android/server/display/BrightnessTracker$TrackerHandler;
.super Landroid/os/Handler;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/Sensor;

    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->access$2000(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/Sensor;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/display/BrightnessConfiguration;

    invoke-static {v0, v3}, Lcom/android/server/display/BrightnessTracker;->access$1802(Lcom/android/server/display/BrightnessTracker;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1800(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1800(Lcom/android/server/display/BrightnessTracker;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v0, v1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1900(Lcom/android/server/display/BrightnessTracker;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1500(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1900(Lcom/android/server/display/BrightnessTracker;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v1}, Lcom/android/server/display/BrightnessTracker;->access$1700(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1400(Lcom/android/server/display/BrightnessTracker;)V

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1500(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1600(Lcom/android/server/display/BrightnessTracker;)V

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {v0}, Lcom/android/server/display/BrightnessTracker;->access$1700(Lcom/android/server/display/BrightnessTracker;)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget v5, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    iget v7, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    iget-boolean v8, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isUserSetBrightness:Z

    iget-boolean v9, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    iget-wide v10, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    iget-object v12, v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    invoke-static/range {v4 .. v12}, Lcom/android/server/display/BrightnessTracker;->access$1300(Lcom/android/server/display/BrightnessTracker;FZFZZJLjava/lang/String;)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker$TrackerHandler;->this$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->access$1200(Lcom/android/server/display/BrightnessTracker;F)V

    nop

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
