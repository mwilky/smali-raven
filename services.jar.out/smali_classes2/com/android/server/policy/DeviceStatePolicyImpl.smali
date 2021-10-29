.class public final Lcom/android/server/policy/DeviceStatePolicyImpl;
.super Ljava/lang/Object;
.source "DeviceStatePolicyImpl.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStatePolicy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mProvider:Lcom/android/server/devicestate/DeviceStateProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    return-void
.end method


# virtual methods
.method public configureDeviceForState(ILjava/lang/Runnable;)V
    .locals 0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/DeviceStatePolicyImpl;->mProvider:Lcom/android/server/devicestate/DeviceStateProvider;

    return-object v0
.end method
