.class public final Lcom/android/systemui/media/MediaDataManager$getCustomAction$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $controller:Landroid/media/session/MediaController;

.field public final synthetic $customAction:Landroid/media/session/PlaybackState$CustomAction;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaController;Landroid/media/session/PlaybackState$CustomAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$getCustomAction$1;->$controller:Landroid/media/session/MediaController;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$getCustomAction$1;->$customAction:Landroid/media/session/PlaybackState$CustomAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$getCustomAction$1;->$controller:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$getCustomAction$1;->$customAction:Landroid/media/session/PlaybackState$CustomAction;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V

    return-void
.end method
