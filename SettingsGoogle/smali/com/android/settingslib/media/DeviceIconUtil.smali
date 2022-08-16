.class public Lcom/android/settingslib/media/DeviceIconUtil;
.super Ljava/lang/Object;
.source "DeviceIconUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/DeviceIconUtil$Device;
    }
.end annotation


# static fields
.field private static final DEFAULT_ICON:I


# instance fields
.field private final mAudioDeviceTypeToIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settingslib/media/DeviceIconUtil$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaRouteTypeToIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settingslib/media/DeviceIconUtil$Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/settingslib/R$drawable;->ic_smartphone:I

    sput v0, Lcom/android/settingslib/media/DeviceIconUtil;->DEFAULT_ICON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mAudioDeviceTypeToIconMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settingslib/media/DeviceIconUtil$Device;

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    sget v2, Lcom/android/settingslib/R$drawable;->ic_headphone:I

    const/16 v3, 0xb

    invoke-direct {v1, v3, v3, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v4, 0x16

    invoke-direct {v1, v4, v4, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v4, 0xc

    invoke-direct {v1, v4, v4, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v5, 0xd

    invoke-direct {v1, v5, v5, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    const/16 v6, 0x9

    invoke-direct {v1, v6, v6, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    invoke-direct {v1, v5, v5, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    invoke-direct {v1, v6, v6, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    sget v2, Lcom/android/settingslib/R$drawable;->ic_smartphone:I

    invoke-direct {v1, v4, v4, v2}, Lcom/android/settingslib/media/DeviceIconUtil$Device;-><init>(III)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    iget-object v2, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mAudioDeviceTypeToIconMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/settingslib/media/DeviceIconUtil$Device;->-$$Nest$fgetmAudioDeviceType(Lcom/android/settingslib/media/DeviceIconUtil$Device;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/settingslib/media/DeviceIconUtil$Device;->-$$Nest$fgetmMediaRouteType(Lcom/android/settingslib/media/DeviceIconUtil$Device;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getIconResIdFromMediaRouteType(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/media/DeviceIconUtil;->mMediaRouteTypeToIconMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/media/DeviceIconUtil$Device;

    invoke-static {p0}, Lcom/android/settingslib/media/DeviceIconUtil$Device;->-$$Nest$fgetmIconDrawableRes(Lcom/android/settingslib/media/DeviceIconUtil$Device;)I

    move-result p0

    return p0

    :cond_0
    sget p0, Lcom/android/settingslib/media/DeviceIconUtil;->DEFAULT_ICON:I

    return p0
.end method
