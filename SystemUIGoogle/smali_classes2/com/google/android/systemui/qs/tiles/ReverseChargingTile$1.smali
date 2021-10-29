.class Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;
.super Landroid/os/IThermalEventListener$Stub;
.source "ReverseChargingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$1;->this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyThrottling(Landroid/os/Temperature;)V
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
    invoke-static {p0, v0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->access$002(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;Z)Z

    invoke-static {}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->access$100()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyThrottling(): status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReverseChargingTile"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
