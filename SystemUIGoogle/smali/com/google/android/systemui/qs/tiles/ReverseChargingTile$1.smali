.class public final Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;
.super Landroid/os/IThermalEventListener$Stub;
.source "ReverseChargingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;->this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;->this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->mOverHeat:Z

    sget-boolean p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "notifyThrottling(): status="

    const-string v0, "ReverseChargingTile"

    invoke-static {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    return-void
.end method
