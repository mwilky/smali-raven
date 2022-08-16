.class public abstract Lcom/google/android/systemui/statusbar/INotificationVoiceReplyService$Stub;
.super Landroid/os/Binder;
.source "INotificationVoiceReplyService.java"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.systemui.statusbar.INotificationVoiceReplyService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    const/4 v1, 0x1

    const-string v2, "com.google.android.systemui.statusbar.INotificationVoiceReplyService"

    if-lt v0, v1, :cond_0

    const v3, 0xffffff

    if-gt v0, v3, :cond_0

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const v4, 0x5f4e5446

    if-eq v0, v4, :cond_8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_1
    move-object/from16 v0, p0

    check-cast v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object v3, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    iget-object v0, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v3, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$hideVisibleQuickPhraseCta$1;

    invoke-direct {v3, v0, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$hideVisibleQuickPhraseCta$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v3, p0

    check-cast v3, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object v4, v3, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v4}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    iget-object v4, v3, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v5, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;

    invoke-direct {v5, v4, v3, v0, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$setFeatureEnabled$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ILkotlin/coroutines/Continuation;)V

    invoke-static {v4, v5}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v8, p0

    check-cast v8, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object v0, v8, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    iget-object v0, v8, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v2, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$onVoiceAuthStateChanged$1;

    const/4 v11, 0x0

    move-object v6, v2

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$onVoiceAuthStateChanged$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;IILkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v14, p0

    check-cast v14, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object v0, v14, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    iget-object v0, v14, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v2, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;

    const/16 v17, 0x0

    move-object v12, v2

    move-object v13, v0

    invoke-direct/range {v12 .. v17}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$startVoiceReply$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v4, v2

    goto :goto_1

    :cond_6
    const-string v4, "com.google.android.systemui.statusbar.INotificationVoiceReplyServiceCallbacks"

    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_7

    instance-of v5, v4, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    if-eqz v5, :cond_7

    check-cast v4, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;

    goto :goto_1

    :cond_7
    new-instance v4, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks$Stub$Proxy;

    invoke-direct {v4, v0}, Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    check-cast v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    iget-object v3, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    invoke-static {v3}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$ensureCallerIsAgsa(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;)V

    iget-object v3, v0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;

    new-instance v5, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1;

    invoke-direct {v5, v3, v0, v4, v2}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerCallbacks$1;-><init>(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;Lcom/google/android/systemui/statusbar/INotificationVoiceReplyServiceCallbacks;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v5}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;->access$serially(Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService;Lkotlin/jvm/functions/Function1;)V

    :goto_2
    return v1

    :cond_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
