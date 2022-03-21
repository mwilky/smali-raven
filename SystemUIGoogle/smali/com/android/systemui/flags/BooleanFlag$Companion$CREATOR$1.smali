.class public final Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "Flag.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/flags/BooleanFlag;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/systemui/flags/BooleanFlag;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/flags/BooleanFlag;
    .locals 1

    const-string p0, "parcel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/systemui/flags/BooleanFlag;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/flags/BooleanFlag;-><init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/systemui/flags/BooleanFlag;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/systemui/flags/BooleanFlag;
    .locals 0

    new-array p0, p1, [Lcom/android/systemui/flags/BooleanFlag;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;->newArray(I)[Lcom/android/systemui/flags/BooleanFlag;

    move-result-object p0

    return-object p0
.end method
