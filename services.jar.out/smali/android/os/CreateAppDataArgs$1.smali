.class Landroid/os/CreateAppDataArgs$1;
.super Ljava/lang/Object;
.source "CreateAppDataArgs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CreateAppDataArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/CreateAppDataArgs;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataArgs;
    .locals 1

    new-instance v0, Landroid/os/CreateAppDataArgs;

    invoke-direct {v0}, Landroid/os/CreateAppDataArgs;-><init>()V

    invoke-virtual {v0, p1}, Landroid/os/CreateAppDataArgs;->readFromParcel(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataArgs$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CreateAppDataArgs;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/os/CreateAppDataArgs;
    .locals 1

    new-array v0, p1, [Landroid/os/CreateAppDataArgs;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/CreateAppDataArgs$1;->newArray(I)[Landroid/os/CreateAppDataArgs;

    move-result-object p1

    return-object p1
.end method
