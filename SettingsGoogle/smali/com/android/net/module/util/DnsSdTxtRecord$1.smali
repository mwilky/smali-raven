.class Lcom/android/net/module/util/DnsSdTxtRecord$1;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsSdTxtRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/net/module/util/DnsSdTxtRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/net/module/util/DnsSdTxtRecord;
    .locals 1

    new-instance p0, Lcom/android/net/module/util/DnsSdTxtRecord;

    invoke-direct {p0}, Lcom/android/net/module/util/DnsSdTxtRecord;-><init>()V

    invoke-static {p0}, Lcom/android/net/module/util/DnsSdTxtRecord;->-$$Nest$fgetmData(Lcom/android/net/module/util/DnsSdTxtRecord;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/net/module/util/DnsSdTxtRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/net/module/util/DnsSdTxtRecord;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/net/module/util/DnsSdTxtRecord;
    .locals 0

    new-array p0, p1, [Lcom/android/net/module/util/DnsSdTxtRecord;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/net/module/util/DnsSdTxtRecord$1;->newArray(I)[Lcom/android/net/module/util/DnsSdTxtRecord;

    move-result-object p0

    return-object p0
.end method
