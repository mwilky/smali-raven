.class public final Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;
.super Ljava/lang/Object;
.source "OverlappedElementController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/OverlappedElementController;",
        ">;"
    }
.end annotation


# instance fields
.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;)Lcom/google/android/systemui/assist/uihints/OverlappedElementController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/OverlappedElementController;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/assist/uihints/OverlappedElementController;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;->statusBarLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;->newInstance(Ldagger/Lazy;)Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/OverlappedElementController_Factory;->get()Lcom/google/android/systemui/assist/uihints/OverlappedElementController;

    move-result-object p0

    return-object p0
.end method
