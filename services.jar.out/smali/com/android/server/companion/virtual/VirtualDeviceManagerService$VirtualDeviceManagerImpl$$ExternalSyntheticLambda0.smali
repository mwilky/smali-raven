.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/CameraAccessController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/CameraAccessController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/CameraAccessController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/CameraAccessController;

    check-cast p1, Landroid/util/ArraySet;

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->$r8$lambda$AX24K1SX1g6jGdtmuNXo1XowuXY(Lcom/android/server/companion/virtual/CameraAccessController;Landroid/util/ArraySet;)V

    return-void
.end method
