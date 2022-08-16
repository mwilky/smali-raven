.class public final Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;
.super Ljava/lang/Object;
.source "DaggerSysUIGoogleGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dreams/complication/dagger/ComplicationViewModelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComplicationViewModelComponentI"
.end annotation


# instance fields
.field public final complication:Lcom/android/systemui/dreams/complication/Complication;

.field public final id:Lcom/android/systemui/dreams/complication/ComplicationId;

.field public final synthetic this$2:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl;Lcom/android/systemui/dreams/complication/Complication;Lcom/android/systemui/dreams/complication/ComplicationId;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->this$2:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->complication:Lcom/android/systemui/dreams/complication/Complication;

    iput-object p3, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->id:Lcom/android/systemui/dreams/complication/ComplicationId;

    return-void
.end method


# virtual methods
.method public final getViewModelProvider()Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;
    .locals 5

    new-instance v0, Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;

    iget-object v1, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->this$2:Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl;

    iget-object v2, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl;->store:Landroidx/lifecycle/ViewModelStore;

    new-instance v3, Lcom/android/systemui/dreams/complication/ComplicationViewModel;

    iget-object v4, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->complication:Lcom/android/systemui/dreams/complication/Complication;

    iget-object p0, p0, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl$ComplicationViewModelComponentI;->id:Lcom/android/systemui/dreams/complication/ComplicationId;

    iget-object v1, v1, Lcom/google/android/systemui/dagger/DaggerSysUIGoogleGlobalRootComponent$SysUIGoogleSysUIComponentImpl$DreamOverlayComponentImpl;->host:Lcom/android/systemui/dreams/complication/Complication$Host;

    invoke-direct {v3, v4, p0, v1}, Lcom/android/systemui/dreams/complication/ComplicationViewModel;-><init>(Lcom/android/systemui/dreams/complication/Complication;Lcom/android/systemui/dreams/complication/ComplicationId;Lcom/android/systemui/dreams/complication/Complication$Host;)V

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/dreams/complication/ComplicationViewModel;)V

    return-object v0
.end method
