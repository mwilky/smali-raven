.class public final Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;
.super Ljava/lang/Object;
.source "QSFragmentModule_ProvidesStatusIconContainerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/StatusIconContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private final qsHeaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickStatusBarHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickStatusBarHeader;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;->qsHeaderProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QuickStatusBarHeader;",
            ">;)",
            "Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesStatusIconContainer(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule;->providesStatusIconContainer(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/StatusIconContainer;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;->qsHeaderProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;->providesStatusIconContainer(Lcom/android/systemui/qs/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesStatusIconContainerFactory;->get()Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    move-result-object p0

    return-object p0
.end method
