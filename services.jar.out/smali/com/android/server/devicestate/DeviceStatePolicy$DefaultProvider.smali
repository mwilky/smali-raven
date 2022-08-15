.class public final Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;
.super Ljava/lang/Object;
.source "DeviceStatePolicy.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStatePolicy$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;
    .locals 0

    new-instance p0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceStatePolicyImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
