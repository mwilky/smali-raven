.class public final Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DreamOverlayStatusBarViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->updateWifiUnavailableStatusIcon()V

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->updateWifiUnavailableStatusIcon()V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController$1;->this$0:Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/DreamOverlayStatusBarViewController;->updateWifiUnavailableStatusIcon()V

    return-void
.end method
