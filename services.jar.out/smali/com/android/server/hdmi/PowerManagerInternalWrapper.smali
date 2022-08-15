.class public Lcom/android/server/hdmi/PowerManagerInternalWrapper;
.super Ljava/lang/Object;
.source "PowerManagerInternalWrapper.java"


# instance fields
.field public mPowerManagerInternal:Landroid/os/PowerManagerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    return-void
.end method


# virtual methods
.method public wasDeviceIdleFor(J)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    move-result p0

    return p0
.end method
