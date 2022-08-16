.class public final Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule_ProvideActivityStarterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$StartActivityInfoListener;",
        ">;"
    }
.end annotation


# instance fields
.field public final centralSurfacesLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
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
            "Lcom/android/systemui/statusbar/phone/CentralSurfaces;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;->centralSurfacesLazyProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideActivityStarterFactory;->centralSurfacesLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    new-instance v0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule$1;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method
