.class public final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/GlobalRootComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/R$menu;->checkBuilderRequirement(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    new-instance v3, Lcom/android/systemui/dagger/GlobalModule;

    invoke-direct {v3}, Lcom/android/systemui/dagger/GlobalModule;-><init>()V

    new-instance v4, Lcom/android/systemui/dagger/AndroidInternalsModule;

    invoke-direct {v4}, Lcom/android/systemui/dagger/AndroidInternalsModule;-><init>()V

    new-instance v5, Lcom/android/systemui/dagger/FrameworkServicesModule;

    invoke-direct {v5}, Lcom/android/systemui/dagger/FrameworkServicesModule;-><init>()V

    new-instance v6, Lcom/android/systemui/unfold/UnfoldTransitionModule;

    invoke-direct {v6}, Lcom/android/systemui/unfold/UnfoldTransitionModule;-><init>()V

    new-instance v7, Lcom/android/systemui/unfold/UnfoldSharedModule;

    invoke-direct {v7}, Lcom/android/systemui/unfold/UnfoldSharedModule;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context:Landroid/content/Context;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;-><init>(Lcom/android/systemui/dagger/GlobalModule;Lcom/android/systemui/dagger/AndroidInternalsModule;Lcom/android/systemui/dagger/FrameworkServicesModule;Lcom/android/systemui/unfold/UnfoldTransitionModule;Lcom/android/systemui/unfold/UnfoldSharedModule;Landroid/content/Context;)V

    return-object v0
.end method

.method public final context(Landroid/content/Context;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method
