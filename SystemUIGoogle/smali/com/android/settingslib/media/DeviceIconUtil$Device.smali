.class public final Lcom/android/settingslib/media/DeviceIconUtil$Device;
.super Ljava/lang/Object;
.source "DeviceIconUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/DeviceIconUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Device"
.end annotation


# instance fields
.field public final mAudioDeviceType:I

.field public final mIconDrawableRes:I

.field public final mMediaRouteType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mAudioDeviceType:I

    iput p2, p0, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mMediaRouteType:I

    iput p3, p0, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mIconDrawableRes:I

    return-void
.end method
