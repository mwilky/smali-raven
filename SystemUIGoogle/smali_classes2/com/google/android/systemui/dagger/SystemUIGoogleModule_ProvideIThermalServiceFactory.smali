.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideIThermalServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/IThermalService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory$InstanceHolder;->access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideIThermalService()Landroid/os/IThermalService;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideIThermalService()Landroid/os/IThermalService;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IThermalService;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/IThermalService;
    .locals 0

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;->provideIThermalService()Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideIThermalServiceFactory;->get()Landroid/os/IThermalService;

    move-result-object p0

    return-object p0
.end method
