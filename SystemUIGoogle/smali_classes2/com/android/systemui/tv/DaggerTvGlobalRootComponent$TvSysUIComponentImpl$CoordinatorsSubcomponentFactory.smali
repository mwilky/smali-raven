.class final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$CoordinatorsSubcomponentFactory;
.super Ljava/lang/Object;
.source "DaggerTvGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CoordinatorsSubcomponentFactory"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$CoordinatorsSubcomponentFactory;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$CoordinatorsSubcomponentFactory;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent;
    .locals 2

    new-instance v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$CoordinatorsSubcomponentImpl;

    iget-object p0, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$CoordinatorsSubcomponentFactory;->this$1:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl$CoordinatorsSubcomponentImpl;-><init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$1;)V

    return-object v0
.end method
