.class public final Lcom/android/systemui/util/DeviceConfigProxy_Factory;
.super Ljava/lang/Object;
.source "DeviceConfigProxy_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/DeviceConfigProxy_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/DeviceConfigProxy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/DeviceConfigProxy_Factory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory$InstanceHolder;->access$000()Lcom/android/systemui/util/DeviceConfigProxy_Factory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Lcom/android/systemui/util/DeviceConfigProxy;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-direct {v0}, Lcom/android/systemui/util/DeviceConfigProxy;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/DeviceConfigProxy;
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->newInstance()Lcom/android/systemui/util/DeviceConfigProxy;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/DeviceConfigProxy_Factory;->get()Lcom/android/systemui/util/DeviceConfigProxy;

    move-result-object p0

    return-object p0
.end method
