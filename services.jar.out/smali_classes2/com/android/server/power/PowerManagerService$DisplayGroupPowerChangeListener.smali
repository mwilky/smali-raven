.class final Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/DisplayGroupPowerStateMapper$DisplayGroupPowerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayGroupPowerChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayGroupEventLocked(II)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->getWakefulnessLocked()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayGroupPowerStateMapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getGlobalWakefulnessLocked()I

    move-result v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    if-ne v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e8

    move v4, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;IJIII)Z

    :cond_0
    if-eq v0, v1, :cond_3

    const/16 v3, 0xb

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    goto :goto_2

    :pswitch_1
    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xc

    :goto_0
    move v2, v3

    goto :goto_2

    :pswitch_2
    if-nez p1, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :cond_2
    nop

    :goto_1
    move v2, v3

    nop

    :goto_2
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/DisplayGroupPowerStateMapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/DisplayGroupPowerStateMapper;->getGlobalWakefulnessLocked()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/power/PowerManagerService$Clock;->uptimeMillis()J

    move-result-wide v5

    const/16 v8, 0x3e8

    const/16 v9, 0x3e8

    iget-object v7, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v7}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "groupId: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move v7, v2

    invoke-static/range {v3 .. v11}, Lcom/android/server/power/PowerManagerService;->access$400(Lcom/android/server/power/PowerManagerService;IJIIILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    const/high16 v3, 0x10000

    invoke-static {v2, v3}, Lcom/android/server/power/PowerManagerService;->access$576(Lcom/android/server/power/PowerManagerService;I)I

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$600(Lcom/android/server/power/PowerManagerService;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
