.class public Landroid/hardware/usb/PortRole$1;
.super Ljava/lang/Object;
.source "PortRole.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/PortRole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/PortRole;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/PortRole;
    .locals 1

    new-instance p0, Landroid/hardware/usb/PortRole;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/usb/PortRole;-><init>(Landroid/os/Parcel;Landroid/hardware/usb/PortRole-IA;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/PortRole;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/usb/PortRole;
    .locals 0

    new-array p0, p1, [Landroid/hardware/usb/PortRole;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole$1;->newArray(I)[Landroid/hardware/usb/PortRole;

    move-result-object p0

    return-object p0
.end method
