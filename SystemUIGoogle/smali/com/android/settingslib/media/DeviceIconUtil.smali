.class public final Lcom/android/settingslib/media/DeviceIconUtil;
.super Ljava/lang/Object;
.source "DeviceIconUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/DeviceIconUtil$Device;
    }
.end annotation


# instance fields
.field public final mAudioDeviceTypeToIconMap:Ljava/util/HashMap;

.field public final mMediaRouteTypeToIconMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mAudioDeviceTypeToIconMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/HashMap;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settingslib/media/DeviceIconUtil$Device;

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v2, 0xb

    const v3, 0x7f08055d

    invoke-direct {v1, v2, v2, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v4, 0x16

    invoke-direct {v1, v4, v4, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v4, 0xc

    invoke-direct {v1, v4, v4, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v5, 0xd

    invoke-direct {v1, v5, v5, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v6, 0x9

    invoke-direct {v1, v6, v6, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    invoke-direct {v1, v5, v5, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    invoke-direct {v1, v6, v6, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const v3, 0x7f080670

    invoke-direct {v1, v4, v4, v3}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    iget-object v3, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mAudioDeviceTypeToIconMap:Ljava/util/HashMap;

    iget v4, v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mAudioDeviceType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/HashMap;

    iget v4, v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;->mMediaRouteType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
