.class public final Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "QSFragmentModule_ProvideThemedLayoutInflaterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/view/LayoutInflater;",
        ">;"
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

    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideThemedLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule;->provideThemedLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;->provideThemedLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvideThemedLayoutInflaterFactory;->get()Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method
