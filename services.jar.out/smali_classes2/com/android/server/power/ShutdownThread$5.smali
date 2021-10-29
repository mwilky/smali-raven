.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/util/TimingsTraceLog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$300(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const-string v5, "ShutdownThread"

    if-nez v4, :cond_2

    const-string v6, "Turning off cellular radios..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/ShutdownThread;->access$500(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->shutdownAllRadios()V

    :cond_2
    const-string v6, "Waiting for Radio..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v9, v8

    sub-long/2addr v9, v6

    long-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v9, v11

    const-wide/high16 v11, 0x4028000000000000L    # 12.0

    mul-double/2addr v9, v11

    int-to-double v11, v8

    div-double/2addr v9, v11

    double-to-int v8, v9

    add-int/lit8 v8, v8, 0x6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Lcom/android/server/power/ShutdownThread;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v8, v10}, Lcom/android/server/power/ShutdownThread;->access$800(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v8

    xor-int/2addr v8, v3

    move v4, v8

    if-eqz v4, :cond_4

    const-string v8, "Radio turned off."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/power/ShutdownThread;->access$900(Ljava/lang/String;)V

    nop

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v10, "ShutdownRadio"

    invoke-virtual {v0, v10, v8, v9}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_4
    if-eqz v4, :cond_5

    const-string v8, "Radio shutdown complete."

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v3, v5, v2

    goto :goto_3

    :cond_5
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    iget-wide v8, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v8, v10

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method
