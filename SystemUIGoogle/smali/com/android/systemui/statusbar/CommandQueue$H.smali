.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4b

    :goto_0
    :sswitch_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/fingerprint/IUdfpsHbmListener;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :sswitch_1
    move v2, v3

    :goto_1
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget v7, v1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_2

    :cond_0
    move v7, v3

    :goto_2
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setNavigationBarLumaSamplingEnabled(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :goto_3
    :sswitch_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onEmergencyActionLaunchGestureDetected()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :sswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_0
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    :try_start_1
    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_5
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/systemui/statusbar/CommandQueue;->access$500()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to handle logging command"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_6
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_4b

    :goto_7
    :sswitch_4
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->requestWindowMagnificationConnection(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :sswitch_5
    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->suppressAmbientDisplay(Z)V

    goto :goto_8

    :goto_9
    :sswitch_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onTracingStateChanged(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :sswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v3, v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideToast(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_a

    :sswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v14, v3

    check-cast v14, Landroid/app/ITransientNotificationCallback;

    iget v15, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v1, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v0, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move v4, v15

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move v9, v1

    move-object v10, v14

    invoke-interface/range {v3 .. v10}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showToast(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/IBinder;ILandroid/app/ITransientNotificationCallback;)V

    goto :goto_b

    :goto_c
    :sswitch_9
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissInattentiveSleepWarning(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :goto_d
    :sswitch_a
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showInattentiveSleepWarning()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :sswitch_b
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    :goto_e
    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v4, v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->abortTransient(I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :sswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    :goto_f
    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    iget-object v4, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v4}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v4, v2, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showTransient(I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :sswitch_d
    move v2, v3

    :goto_10
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_4

    move v6, v4

    goto :goto_11

    :cond_4
    move v6, v3

    :goto_11
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRecentsAnimationStateChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :goto_12
    :sswitch_e
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEscapeToast()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :goto_13
    :sswitch_f
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPinningEnterExitToast(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :goto_14
    :sswitch_10
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showWirelessChargingAnimation(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :goto_15
    :sswitch_11
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideAuthenticationDialog()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :sswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :goto_16
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricError(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_4b

    :sswitch_13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :goto_17
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricHelp(ILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_4b

    :goto_18
    :sswitch_14
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onBiometricAuthenticated()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :sswitch_15
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$400(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v2

    const/high16 v4, 0x2a0000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$400(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v2

    const/high16 v4, 0x290000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$400(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;

    move-result-object v2

    const/high16 v4, 0x280000

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :goto_19
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_7

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/biometrics/PromptInfo;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, [I

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget v10, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget v2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v16, v2

    invoke-interface/range {v4 .. v16}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAuthenticationDialog(Landroid/hardware/biometrics/PromptInfo;Landroid/hardware/biometrics/IBiometricSysuiReceiver;[IZZIJLjava/lang/String;JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_4b

    :sswitch_16
    move v2, v3

    :goto_1a
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget v7, v1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_8

    move v7, v4

    goto :goto_1b

    :cond_8
    move v7, v3

    :goto_1b
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onRotationProposal(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :sswitch_17
    move v2, v3

    :goto_1c
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_9

    move v6, v4

    goto :goto_1d

    :cond_9
    move v6, v3

    :goto_1d
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTopAppHidesStatusBar(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :sswitch_18
    move v2, v3

    :goto_1e
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_a

    move v6, v4

    goto :goto_1f

    :cond_a
    move v6, v3

    :goto_1f
    iget-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowShutdownUi(ZLjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :goto_20
    :sswitch_19
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->togglePanel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :goto_21
    :sswitch_1a
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleShowGlobalActionsMenu()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :goto_22
    :sswitch_1b
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->handleSystemKey(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :goto_23
    :sswitch_1c
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->dismissKeyboardShortcutsMenu()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :goto_24
    :sswitch_1d
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionFinished(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :goto_25
    :sswitch_1e
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleSplitScreen()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :goto_26
    :sswitch_1f
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->clickTile(Landroid/content/ComponentName;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :goto_27
    :sswitch_20
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->remQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :goto_28
    :sswitch_21
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addQsTile(Landroid/content/ComponentName;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :goto_29
    :sswitch_22
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showPictureInPictureMenu()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :goto_2a
    :sswitch_23
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleKeyboardShortcutsMenu(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :goto_2b
    :sswitch_24
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onCameraLaunchGestureDetected(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :goto_2c
    :sswitch_25
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->startAssist(Landroid/os/Bundle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :goto_2d
    :sswitch_26
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showAssistDisclosure()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :sswitch_27
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    move v2, v3

    :goto_2e
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v5, :cond_b

    move v12, v4

    goto :goto_2f

    :cond_b
    move v12, v3

    :goto_2f
    invoke-interface/range {v6 .. v12}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionStarting(IJJZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :goto_30
    :sswitch_28
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionCancelled(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :sswitch_29
    move v2, v3

    :goto_31
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget v7, v1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_c

    move v7, v4

    goto :goto_32

    :cond_c
    move v7, v3

    :goto_32
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->appTransitionPending(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :goto_33
    :sswitch_2a
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showScreenPinningRequest(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :sswitch_2b
    move v2, v3

    :goto_34
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_d

    move v6, v4

    goto :goto_35

    :cond_d
    move v6, v3

    :goto_35
    iget v7, v1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_e

    move v7, v4

    goto :goto_36

    :cond_e
    move v7, v3

    :goto_36
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideRecentApps(ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :sswitch_2c
    move v2, v3

    :goto_37
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_f

    move v6, v4

    goto :goto_38

    :cond_f
    move v6, v3

    :goto_38
    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showRecentApps(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :goto_39
    :sswitch_2d
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    iget v5, v1, Landroid/os/Message;->arg2:I

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :goto_3a
    :sswitch_2e
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :goto_3b
    :sswitch_2f
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :goto_3c
    :sswitch_30
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :sswitch_31
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/os/IBinder;

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v0, :cond_10

    move v10, v4

    goto :goto_3d

    :cond_10
    move v10, v3

    :goto_3d
    iget v0, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz v0, :cond_11

    move v11, v4

    goto :goto_3e

    :cond_11
    move v11, v3

    :goto_3e
    invoke-static/range {v5 .. v11}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZZ)V

    goto/16 :goto_4b

    :goto_3f
    :sswitch_32
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayReady(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :sswitch_33
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    move v2, v3

    :goto_40
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_14

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v5, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v9, v5

    check-cast v9, [Lcom/android/internal/view/AppearanceRegion;

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v5, v4, :cond_12

    move v10, v4

    goto :goto_41

    :cond_12
    move v10, v3

    :goto_41
    iget v11, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v5, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v5, v4, :cond_13

    move v12, v4

    goto :goto_42

    :cond_13
    move v12, v3

    :goto_42
    invoke-interface/range {v6 .. v12}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_4b

    :goto_43
    :sswitch_34
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :sswitch_35
    move v2, v3

    :goto_44
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Landroid/os/Message;->arg1:I

    iget v7, v1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_15

    move v7, v4

    goto :goto_45

    :cond_15
    move v7, v3

    :goto_45
    invoke-interface {v5, v6, v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :goto_46
    :sswitch_36
    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_19

    iget-object v1, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    :sswitch_37
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    move v2, v3

    :goto_47
    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_19

    iget-object v5, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v5}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v6, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v9, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    if-eqz v9, :cond_16

    move v9, v4

    goto :goto_48

    :cond_16
    move v9, v3

    :goto_48
    invoke-interface {v5, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :sswitch_38
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-eq v2, v4, :cond_18

    const/4 v4, 0x2

    if-eq v2, v4, :cond_17

    goto :goto_4b

    :cond_17
    :goto_49
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    :goto_4a
    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_19

    iget-object v2, v0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v2}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {v2, v4, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_19
    :goto_4b
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_38
        0x20000 -> :sswitch_37
        0x30000 -> :sswitch_36
        0x40000 -> :sswitch_35
        0x50000 -> :sswitch_34
        0x60000 -> :sswitch_33
        0x70000 -> :sswitch_32
        0x80000 -> :sswitch_31
        0x90000 -> :sswitch_30
        0xa0000 -> :sswitch_2f
        0xb0000 -> :sswitch_2e
        0xc0000 -> :sswitch_2d
        0xd0000 -> :sswitch_2c
        0xe0000 -> :sswitch_2b
        0x120000 -> :sswitch_2a
        0x130000 -> :sswitch_29
        0x140000 -> :sswitch_28
        0x150000 -> :sswitch_27
        0x160000 -> :sswitch_26
        0x170000 -> :sswitch_25
        0x180000 -> :sswitch_24
        0x190000 -> :sswitch_23
        0x1a0000 -> :sswitch_22
        0x1b0000 -> :sswitch_21
        0x1c0000 -> :sswitch_20
        0x1d0000 -> :sswitch_1f
        0x1e0000 -> :sswitch_1e
        0x1f0000 -> :sswitch_1d
        0x200000 -> :sswitch_1c
        0x210000 -> :sswitch_1b
        0x220000 -> :sswitch_1a
        0x230000 -> :sswitch_19
        0x240000 -> :sswitch_18
        0x250000 -> :sswitch_17
        0x260000 -> :sswitch_16
        0x270000 -> :sswitch_15
        0x280000 -> :sswitch_14
        0x290000 -> :sswitch_13
        0x2a0000 -> :sswitch_12
        0x2b0000 -> :sswitch_11
        0x2c0000 -> :sswitch_10
        0x2d0000 -> :sswitch_f
        0x2e0000 -> :sswitch_e
        0x2f0000 -> :sswitch_d
        0x300000 -> :sswitch_c
        0x310000 -> :sswitch_b
        0x320000 -> :sswitch_a
        0x330000 -> :sswitch_9
        0x340000 -> :sswitch_8
        0x350000 -> :sswitch_7
        0x360000 -> :sswitch_6
        0x370000 -> :sswitch_5
        0x380000 -> :sswitch_4
        0x390000 -> :sswitch_3
        0x3a0000 -> :sswitch_2
        0x3b0000 -> :sswitch_1
        0x3c0000 -> :sswitch_0
    .end sparse-switch
.end method
