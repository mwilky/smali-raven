.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory$InstanceHolder;->access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideBcSmartspaceDataPlugin()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;
    .locals 1

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideBcSmartspaceDataPlugin()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;
    .locals 0

    invoke-static {}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory;->provideBcSmartspaceDataPlugin()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideBcSmartspaceDataPluginFactory;->get()Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object p0

    return-object p0
.end method
