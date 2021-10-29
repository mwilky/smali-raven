.class public final Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;
.super Ljava/lang/Object;
.source "QSFragmentModule_ProvidesMultiUserSWitchFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/MultiUserSwitch;",
        ">;"
    }
.end annotation


# instance fields
.field private final qsFooterViewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSFooterView;",
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
            "Lcom/android/systemui/qs/QSFooterView;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;->qsFooterViewProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/qs/QSFooterView;",
            ">;)",
            "Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesMultiUserSWitch(Lcom/android/systemui/qs/QSFooterView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule;->providesMultiUserSWitch(Lcom/android/systemui/qs/QSFooterView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;->qsFooterViewProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-static {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;->providesMultiUserSWitch(Lcom/android/systemui/qs/QSFooterView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/dagger/QSFragmentModule_ProvidesMultiUserSWitchFactory;->get()Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object p0

    return-object p0
.end method
