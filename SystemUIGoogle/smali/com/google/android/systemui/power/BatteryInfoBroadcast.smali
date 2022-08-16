.class public final Lcom/google/android/systemui/power/BatteryInfoBroadcast;
.super Ljava/lang/Object;
.source "BatteryInfoBroadcast.java"


# instance fields
.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mContentObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast$1;-><init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;)V

    iput-object v0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/google/android/systemui/power/BatteryInfoBroadcast$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/power/BatteryInfoBroadcast$2;-><init>(Lcom/google/android/systemui/power/BatteryInfoBroadcast;)V

    iput-object v1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mPowerManager:Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "device_name"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "com.google.android.settings.intelligence"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/power/BatteryInfoBroadcast;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method
