.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    return-void
.end method


# virtual methods
.method public final onCameraAccessBlocked(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCameraAccessBlocked(I)V

    return-void
.end method
