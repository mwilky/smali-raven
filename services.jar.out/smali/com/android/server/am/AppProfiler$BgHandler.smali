.class Lcom/android/server/am/AppProfiler$BgHandler;
.super Landroid/os/Handler;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgHandler"
.end annotation


# static fields
.field static final COLLECT_PSS_BG_MSG:I = 0x1

.field static final DEFER_PSS_MSG:I = 0x2

.field static final STOP_DEFERRING_PSS_MSG:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->access$500(Lcom/android/server/am/AppProfiler;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->access$400(Lcom/android/server/am/AppProfiler;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->access$300(Lcom/android/server/am/AppProfiler;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
