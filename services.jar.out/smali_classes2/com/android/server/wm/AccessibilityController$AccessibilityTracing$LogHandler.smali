.class Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogHandler"
.end annotation


# static fields
.field public static final MESSAGE_LOG_TRACE_ENTRY:I = 0x1

.field public static final MESSAGE_WRITE_FILE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->access$2200(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->access$2400(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V

    monitor-exit v3

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    :try_start_1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    move-object v4, v0

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    move-object v5, v0

    const-wide v6, 0x20b00000002L

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    iget-object v8, v3, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/StackTraceElement;

    invoke-static {v0, v8}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->access$2000(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    sub-long v13, v11, v9

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/32 v17, 0xf4240

    div-long v17, v13, v17

    sub-long v17, v15, v17

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-wide/from16 v19, v11

    const-wide v11, 0x10600000001L

    invoke-virtual {v4, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v11, 0x10900000002L

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10900000005L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10900000003L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10900000004L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10900000006L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10900000007L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10900000008L

    invoke-virtual {v4, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v11, 0x10b00000009L

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {v4, v11, v12, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    const-wide v11, 0x10b0000000aL

    invoke-virtual {v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->access$2100(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->access$2100(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v22, v3

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;I)V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-virtual {v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->access$2200(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing$LogHandler;->this$0:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->access$2300(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)Lcom/android/internal/util/TraceBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_2
    move-exception v0

    move-object/from16 v22, v3

    :goto_0
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v22, v3

    :goto_1
    const-string v2, "AccessibilityTracing"

    const-string v3, "Exception while tracing state"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
