.class public final synthetic Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/hal/port/UsbPortAidl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/usb/hal/port/UsbPortAidl;

    invoke-virtual {p0}, Lcom/android/server/usb/hal/port/UsbPortAidl;->serviceDied()V

    return-void
.end method
