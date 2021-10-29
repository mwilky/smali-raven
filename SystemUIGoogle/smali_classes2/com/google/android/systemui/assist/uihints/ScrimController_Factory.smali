.class public final Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;
.super Ljava/lang/Object;
.source "ScrimController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/ScrimController;",
        ">;"
    }
.end annotation


# instance fields
.field private final lightnessProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/LightnessProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final overlappedElementControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/OverlappedElementController;",
            ">;"
        }
    .end annotation
.end field

.field private final parentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final touchInsideHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/OverlappedElementController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/LightnessProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->parentProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->overlappedElementControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->lightnessProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/view/ViewGroup;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/OverlappedElementController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/LightnessProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/ViewGroup;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)Lcom/google/android/systemui/assist/uihints/ScrimController;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/ScrimController;

    check-cast p1, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    check-cast p2, Lcom/google/android/systemui/assist/uihints/LightnessProvider;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/ScrimController;-><init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/OverlappedElementController;Lcom/google/android/systemui/assist/uihints/LightnessProvider;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/ScrimController;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->parentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->overlappedElementControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->lightnessProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->touchInsideHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->newInstance(Landroid/view/ViewGroup;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;)Lcom/google/android/systemui/assist/uihints/ScrimController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/ScrimController_Factory;->get()Lcom/google/android/systemui/assist/uihints/ScrimController;

    move-result-object p0

    return-object p0
.end method
