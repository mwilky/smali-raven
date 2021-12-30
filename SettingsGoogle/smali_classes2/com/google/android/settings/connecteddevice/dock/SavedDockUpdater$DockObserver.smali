.class Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater$DockObserver;
.super Landroid/database/ContentObserver;
.source "SavedDockUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockObserver"
.end annotation


# instance fields
.field private final mToken:I

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater;


# direct methods
.method constructor <init>(Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater;Landroid/os/Handler;ILandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater$DockObserver;->this$0:Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput p3, p0, Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater$DockObserver;->mToken:I

    iput-object p4, p0, Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater$DockObserver;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater$DockObserver;->this$0:Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater;

    iget v0, p0, Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater$DockObserver;->mToken:I

    iget-object p0, p0, Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater$DockObserver;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0, p0}, Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater;->access$000(Lcom/google/android/settings/connecteddevice/dock/SavedDockUpdater;ILandroid/net/Uri;)V

    return-void
.end method
