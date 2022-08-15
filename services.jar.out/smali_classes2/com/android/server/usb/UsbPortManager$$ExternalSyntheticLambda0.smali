.class public final synthetic Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbPortManager;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    iput-object p2, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/UsbPortManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/server/usb/UsbPortManager;->$r8$lambda$mtET4vQ2Fn5naQtaC0tYT2hsVEc(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;)V

    return-void
.end method
