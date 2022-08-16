.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComplicationViewModelComponentI"
.end annotation


# instance fields
.field public final complication:Lcom/android/systemui/dreams/complication/Complication;

.field public final id:Lcom/android/systemui/dreams/complication/ComplicationId;

.field public final synthetic this$2:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;Lcom/android/systemui/dreams/complication/Complication;Lcom/android/systemui/dreams/complication/ComplicationId;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->this$2:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->complication:Lcom/android/systemui/dreams/complication/Complication;

    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->id:Lcom/android/systemui/dreams/complication/ComplicationId;

    return-void
.end method


# virtual methods
.method public final complicationViewModel()Lcom/android/systemui/dreams/complication/ComplicationViewModel;
    .locals 3

    new-instance v0, Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->complication:Lcom/android/systemui/dreams/complication/Complication;

    iget-object v2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->id:Lcom/android/systemui/dreams/complication/ComplicationId;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->this$2:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;->host:Lcom/android/systemui/dreams/complication/Complication$Host;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/dreams/complication/ComplicationViewModel;-><init>(Lcom/android/systemui/dreams/complication/Complication;Lcom/android/systemui/dreams/complication/ComplicationId;Lcom/android/systemui/dreams/complication/Complication$Host;)V

    return-object v0
.end method

.method public final getViewModelProvider()Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;
    .locals 2

    new-instance v0, Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;

    iget-object v1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->this$2:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;

    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl;->store:Landroidx/lifecycle/ViewModelStore;

    invoke-virtual {p0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->complicationViewModel()Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/dreams/complication/ComplicationViewModel;)V

    return-object v0
.end method
