.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/OverrideRequestController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/OverrideRequestController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicestate/OverrideRequestController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicestate/OverrideRequestController;

    check-cast p1, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    return-void
.end method
