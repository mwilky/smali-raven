.class Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HalInterfaceVersion"
.end annotation


# instance fields
.field final mMajor:I

.field final mMinor:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    iput p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    return-void
.end method
