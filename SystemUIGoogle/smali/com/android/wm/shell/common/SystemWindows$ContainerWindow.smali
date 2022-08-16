.class public final Lcom/android/wm/shell/common/SystemWindows$ContainerWindow;
.super Landroid/view/IWindow$Stub;
.source "SystemWindows.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/common/SystemWindows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainerWindow"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeSystemDialogs(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final dispatchAppVisibility(Z)V
    .locals 0

    return-void
.end method

.method public final dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 0

    return-void
.end method

.method public final dispatchGetNewSurface()V
    .locals 0

    return-void
.end method

.method public final dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method

.method public final dispatchWallpaperOffsets(FFFFFZ)V
    .locals 0

    return-void
.end method

.method public final dispatchWindowShown()V
    .locals 0

    return-void
.end method

.method public final executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public final hideInsets(IZ)V
    .locals 0

    return-void
.end method

.method public final insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    return-void
.end method

.method public final moved(II)V
    .locals 0

    return-void
.end method

.method public final requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 0

    return-void
.end method

.method public final requestScrollCapture(Landroid/view/IScrollCaptureResponseListener;)V
    .locals 1

    :try_start_0
    new-instance p0, Landroid/view/ScrollCaptureResponse$Builder;

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;-><init>()V

    const-string v0, "Not Implemented"

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureResponse$Builder;->setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ScrollCaptureResponse$Builder;->build()Landroid/view/ScrollCaptureResponse;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/view/IScrollCaptureResponseListener;->onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .locals 0

    return-void
.end method

.method public final showInsets(IZ)V
    .locals 0

    return-void
.end method

.method public final updatePointerIcon(FF)V
    .locals 0

    return-void
.end method
