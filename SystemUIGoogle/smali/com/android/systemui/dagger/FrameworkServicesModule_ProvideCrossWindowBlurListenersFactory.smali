.class public final Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory;
.super Ljava/lang/Object;
.source "FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/view/CrossWindowBlurListeners;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory;
    .locals 1

    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory$InstanceHolder;->access$000()Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideCrossWindowBlurListeners()Landroid/view/CrossWindowBlurListeners;
    .locals 1

    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule;->provideCrossWindowBlurListeners()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/CrossWindowBlurListeners;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/view/CrossWindowBlurListeners;
    .locals 0

    invoke-static {}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory;->provideCrossWindowBlurListeners()Landroid/view/CrossWindowBlurListeners;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/dagger/FrameworkServicesModule_ProvideCrossWindowBlurListenersFactory;->get()Landroid/view/CrossWindowBlurListeners;

    move-result-object p0

    return-object p0
.end method
