.class Landroid/os/CreateAppDataResult$1;
.super Ljava/lang/Object;
.source "CreateAppDataResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CreateAppDataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/CreateAppDataResult;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataResult;
    .locals 1

    new-instance v0, Landroid/os/CreateAppDataResult;

    invoke-direct {v0}, Landroid/os/CreateAppDataResult;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/CreateAppDataResult;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/CreateAppDataResult;
    .locals 1

    new-array v0, p1, [Landroid/os/CreateAppDataResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataResult$1;->newArray(I)[Landroid/os/CreateAppDataResult;

    move-result-object p1

    return-object p1
.end method
