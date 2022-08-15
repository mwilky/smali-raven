.class public Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;
.super Ljava/lang/Thread;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrokerThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string p1, "AudioDeviceBroker"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$fputmBrokerHandler(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
