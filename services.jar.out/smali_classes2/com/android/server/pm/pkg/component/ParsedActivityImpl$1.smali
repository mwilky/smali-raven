.class public Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;
.super Ljava/lang/Object;
.source "ParsedActivityImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    new-instance p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .locals 0

    new-array p0, p1, [Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;->newArray(I)[Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    move-result-object p0

    return-object p0
.end method
