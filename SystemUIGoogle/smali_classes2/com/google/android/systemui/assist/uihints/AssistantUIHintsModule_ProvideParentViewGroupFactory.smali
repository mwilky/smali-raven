.class public final Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;
.super Ljava/lang/Object;
.source "AssistantUIHintsModule_ProvideParentViewGroupFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final overlayUiHostProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/OverlayUiHost;",
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
            "Lcom/google/android/systemui/assist/uihints/OverlayUiHost;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;->overlayUiHostProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/uihints/OverlayUiHost;",
            ">;)",
            "Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideParentViewGroup(Ljava/lang/Object;)Landroid/view/ViewGroup;
    .locals 0

    check-cast p0, Lcom/google/android/systemui/assist/uihints/OverlayUiHost;

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule;->provideParentViewGroup(Lcom/google/android/systemui/assist/uihints/OverlayUiHost;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;->overlayUiHostProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;->provideParentViewGroup(Ljava/lang/Object;)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/assist/uihints/AssistantUIHintsModule_ProvideParentViewGroupFactory;->get()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method
