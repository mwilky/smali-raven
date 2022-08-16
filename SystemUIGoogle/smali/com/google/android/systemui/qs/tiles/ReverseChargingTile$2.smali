.class public final Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;
.super Landroid/database/ContentObserver;
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
.method public constructor <init>(Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;->this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile$2;->this$0:Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;

    invoke-virtual {p0}, Lcom/google/android/systemui/qs/tiles/ReverseChargingTile;->updateThresholdLevel()V

    return-void
.end method
