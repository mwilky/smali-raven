.class public Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;
.super Landroid/database/ContentObserver;
.source "GnssSatelliteBlocklistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$GnssSatelliteBlocklistCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;->this$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper$1;->this$0:Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssSatelliteBlocklistHelper;->updateSatelliteBlocklist()V

    return-void
.end method
