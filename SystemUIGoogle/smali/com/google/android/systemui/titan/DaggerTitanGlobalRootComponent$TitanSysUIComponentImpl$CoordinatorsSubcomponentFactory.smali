.class public final Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CoordinatorsSubcomponentFactory;
.super Ljava/lang/Object;
.source "DaggerTitanGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CoordinatorsSubcomponentFactory"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CoordinatorsSubcomponentFactory;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorsSubcomponent;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CoordinatorsSubcomponentImpl;

    iget-object p0, p0, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CoordinatorsSubcomponentFactory;->this$1:Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl$CoordinatorsSubcomponentImpl;-><init>(Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent$TitanSysUIComponentImpl;)V

    return-object v0
.end method