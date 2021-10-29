.class Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboard/ClipboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboard/ClipboardService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboard/ClipboardService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;-><init>(Lcom/android/server/clipboard/ClipboardService;)V

    return-void
.end method

.method private checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p2, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$200(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$300(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;I)V

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, p1, v0, p4}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v1}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v4, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v4, v5, v0, p2}, Lcom/android/server/clipboard/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public clearPrimaryClip(Ljava/lang/String;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1e

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$200(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 7

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v3, 0x1d

    invoke-static {v2, v3, p1, v0, v1}, Lcom/android/server/clipboard/ClipboardService;->access$200(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v1}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->access$700(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v1}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, p1, v0, v1, v3}, Lcom/android/server/clipboard/ClipboardService;->access$900(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;IILcom/android/server/clipboard/ClipboardService$PerUserClipboard;)V

    iget-object v4, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v4, v3, p1, v0}, Lcom/android/server/clipboard/ClipboardService;->access$1000(Lcom/android/server/clipboard/ClipboardService;Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;Ljava/lang/String;I)V

    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v3

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ClipboardService"

    const-string v6, "Could not grant permission to primary clip. Clearing clipboard."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v5, v3, v0, p1}, Lcom/android/server/clipboard/ClipboardService;->access$500(Lcom/android/server/clipboard/ClipboardService;Landroid/content/ClipData;ILjava/lang/String;)V

    monitor-exit v2

    return-object v3

    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    :goto_1
    return-object v3
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .locals 8

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v4, v0

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->access$1100(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v7}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v7}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_1

    iget-object v2, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_1
    return-object v2
.end method

.method public getPrimaryClipSource(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_CLIP_SOURCE"

    const-string v2, "Requires SET_CLIP_SOURCE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v4, v0

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->access$1100(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v7}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v7}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_1

    iget-object v2, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->mPrimaryClipPackage:Ljava/lang/String;

    monitor-exit v1

    return-object v2

    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method public hasClipboardText(Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v4, v0

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->access$1100(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v7}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v7}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v4, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v1

    return v2

    :cond_2
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :goto_0
    return v2
.end method

.method public hasPrimaryClip(Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p1, p2}, Lcom/android/server/clipboard/ClipboardService;->access$100(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    const/16 v2, 0x1d

    const/4 v6, 0x0

    move-object v3, p1

    move v4, v0

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/clipboard/ClipboardService;->access$1100(Lcom/android/server/clipboard/ClipboardService;ILjava/lang/String;IIZ)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1, v7}, Lcom/android/server/clipboard/ClipboardService;->access$600(Lcom/android/server/clipboard/ClipboardService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v3, v7}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    return v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v0, p2, p3}, Lcom/android/server/clipboard/ClipboardService;->access$1200(Lcom/android/server/clipboard/ClipboardService;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v1}, Lcom/android/server/clipboard/ClipboardService;->access$400(Lcom/android/server/clipboard/ClipboardService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-static {v2, v0}, Lcom/android/server/clipboard/ClipboardService;->access$800(Lcom/android/server/clipboard/ClipboardService;I)Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/clipboard/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p2}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->this$0:Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0}, Lcom/android/server/clipboard/ClipboardService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_CLIP_SOURCE"

    const-string v2, "Requires SET_CLIP_SOURCE permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/clipboard/ClipboardService$ClipboardImpl;->checkAndSetPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
