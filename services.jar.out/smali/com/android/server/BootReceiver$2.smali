.class public Lcom/android/server/BootReceiver$2;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mBufferSize:I

.field public mTraceBuffer:[B

.field public final synthetic this$0:Lcom/android/server/BootReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->this$0:Lcom/android/server/BootReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x400

    iput p1, p0, Lcom/android/server/BootReceiver$2;->mBufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 2

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    const/16 v1, 0x400

    invoke-static {p1, v0, p2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result p0

    const/16 p1, 0x8

    if-ge p0, p1, :cond_1

    const-string p0, "dmesgd.start"

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {p0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputsSentReports(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    const-string p1, "BootReceiver"

    const-string v0, "Error watching for trace events"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
