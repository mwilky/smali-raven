.class public final Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;
.super Ljava/lang/Object;
.source "MediaOutputBroadcastDialogFactory.kt"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mediaOutputBroadcastDialog:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

.field public final mediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public final nearbyMediaDevicesManagerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;",
            ">;"
        }
    .end annotation
.end field

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final powerExemptionManager:Landroid/os/PowerExemptionManager;

.field public final starter:Lcom/android/systemui/plugins/ActivityStarter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p7, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iput-object p8, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->nearbyMediaDevicesManagerOptional:Ljava/util/Optional;

    iput-object p9, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->audioManager:Landroid/media/AudioManager;

    iput-object p10, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialogFactory;->powerExemptionManager:Landroid/os/PowerExemptionManager;

    return-void
.end method
