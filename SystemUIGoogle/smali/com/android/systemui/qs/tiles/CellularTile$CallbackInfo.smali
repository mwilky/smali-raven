.class public final Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
.super Ljava/lang/Object;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackInfo"
.end annotation


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public airplaneModeEnabled:Z

.field public dataContentDescription:Ljava/lang/CharSequence;

.field public dataSubscriptionName:Ljava/lang/String;

.field public multipleSubs:Z

.field public noSim:Z

.field public roaming:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
