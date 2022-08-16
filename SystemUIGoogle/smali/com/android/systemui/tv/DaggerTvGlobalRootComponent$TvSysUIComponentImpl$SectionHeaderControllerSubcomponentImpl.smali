.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SectionHeaderControllerSubcomponentImpl"
.end annotation


# instance fields
.field public clickIntentActionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public headerTextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public nodeLabelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->initialize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    return-object p0
.end method

.method public final getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-object p0
.end method

.method public final initialize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->nodeLabelProvider:Ljavax/inject/Provider;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->headerTextProvider:Ljavax/inject/Provider;

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->clickIntentActionProvider:Ljavax/inject/Provider;

    iget-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->nodeLabelProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    iget-object v0, p3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->this$0:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providerLayoutInflaterProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->headerTextProvider:Ljavax/inject/Provider;

    iget-object p3, p3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideActivityStarterProvider:Ljavax/inject/Provider;

    invoke-static {p2, v0, v1, p3, p1}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/internal/InstanceFactory;)Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ldagger/internal/Factory;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$SectionHeaderControllerSubcomponentImpl;->sectionHeaderNodeControllerImplProvider:Ljavax/inject/Provider;

    return-void
.end method