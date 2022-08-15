.class public final Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;
.super Ljava/lang/Object;
.source "UsbPortHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/hal/port/UsbPortHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeathRecipient"
.end annotation


# instance fields
.field public pw:Lcom/android/internal/util/IndentingPrintWriter;

.field public final synthetic this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/port/UsbPortHidl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->pw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usb hal service died cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    invoke-static {p1}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fgetmLock(Lcom/android/server/usb/hal/port/UsbPortHidl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/port/UsbPortHidl;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/server/usb/hal/port/UsbPortHidl;->-$$Nest$fputmProxy(Lcom/android/server/usb/hal/port/UsbPortHidl;Landroid/hardware/usb/V1_0/IUsb;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
