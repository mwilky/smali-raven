.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;
.super Ljava/lang/Object;
.source "MediaOutputDialogFactory.kt"


# static fields
.field public static mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

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

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/session/MediaSessionManager;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/broadcast/BroadcastSender;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/animation/DialogLaunchAnimator;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;",
            ">;",
            "Landroid/media/AudioManager;",
            "Landroid/os/PowerExemptionManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iput-object p7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p8, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iput-object p9, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->nearbyMediaDevicesManagerOptional:Ljava/util/Optional;

    iput-object p10, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->audioManager:Landroid/media/AudioManager;

    iput-object p11, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->powerExemptionManager:Landroid/os/PowerExemptionManager;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;ZLandroid/view/View;)V
    .locals 12

    sget-object v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputController;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    iget-object v8, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    iget-object v9, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->nearbyMediaDevicesManagerOptional:Ljava/util/Optional;

    iget-object v10, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->audioManager:Landroid/media/AudioManager;

    iget-object v11, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->powerExemptionManager:Landroid/os/PowerExemptionManager;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/media/dialog/MediaOutputController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;)V

    new-instance p1, Lcom/android/systemui/media/dialog/MediaOutputDialog;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iget-object v6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object v1, p1

    move v3, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/dialog/MediaOutputDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/internal/logging/UiEventLogger;)V

    sput-object p1, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    if-eqz p3, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    sget-object p2, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView(Landroid/app/Dialog;Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method
