.class public final Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;
.super Ljava/lang/Object;
.source "NavBarFader_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/NavBarFader;",
        ">;"
    }
.end annotation


# instance fields
.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationBarControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/navigationbar/NavigationBarController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/navigationbar/NavigationBarController;Landroid/os/Handler;)Lcom/google/android/systemui/assist/uihints/NavBarFader;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/NavBarFader;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/NavBarFader;-><init>(Lcom/android/systemui/navigationbar/NavigationBarController;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/NavBarFader;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;->navigationBarControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, p0}, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;->newInstance(Lcom/android/systemui/navigationbar/NavigationBarController;Landroid/os/Handler;)Lcom/google/android/systemui/assist/uihints/NavBarFader;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/NavBarFader_Factory;->get()Lcom/google/android/systemui/assist/uihints/NavBarFader;

    move-result-object p0

    return-object p0
.end method
