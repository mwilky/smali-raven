.class public final Lcom/android/systemui/util/InjectionInflationController_Factory;
.super Ljava/lang/Object;
.source "InjectionInflationController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/InjectionInflationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewInstanceCreatorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;",
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
            "Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/InjectionInflationController_Factory;->viewInstanceCreatorFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/util/InjectionInflationController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;",
            ">;)",
            "Lcom/android/systemui/util/InjectionInflationController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/InjectionInflationController_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/InjectionInflationController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;)Lcom/android/systemui/util/InjectionInflationController;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/InjectionInflationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/InjectionInflationController;-><init>(Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/InjectionInflationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController_Factory;->viewInstanceCreatorFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;

    invoke-static {p0}, Lcom/android/systemui/util/InjectionInflationController_Factory;->newInstance(Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator$Factory;)Lcom/android/systemui/util/InjectionInflationController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/InjectionInflationController_Factory;->get()Lcom/android/systemui/util/InjectionInflationController;

    move-result-object p0

    return-object p0
.end method
