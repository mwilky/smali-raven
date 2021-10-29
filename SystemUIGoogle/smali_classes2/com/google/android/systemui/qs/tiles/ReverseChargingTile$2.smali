.class Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;->this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;->this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;

    invoke-static {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->access$200(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;)V

    return-void
.end method
