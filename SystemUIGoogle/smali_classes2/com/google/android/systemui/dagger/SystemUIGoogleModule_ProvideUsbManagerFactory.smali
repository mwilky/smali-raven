.class public final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideUsbManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Landroid/hardware/usb/UsbManager;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideUsbManager(Landroid/content/Context;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule;->provideUsbManager(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/hardware/usb/UsbManager;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideUsbManagerFactory;->provideUsbManager(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
