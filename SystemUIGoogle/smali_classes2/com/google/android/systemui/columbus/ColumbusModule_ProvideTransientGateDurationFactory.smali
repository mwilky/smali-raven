.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideTransientGateDurationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory$InstanceHolder;->access$000()Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideTransientGateDuration()J
    .locals 2

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideTransientGateDuration()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public get()Ljava/lang/Long;
    .locals 2

    invoke-static {}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;->provideTransientGateDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideTransientGateDurationFactory;->get()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
