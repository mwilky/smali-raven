.class final Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerGlobalRootComponent.java"

# interfaces
.implements Lcom/android/systemui/dagger/GlobalRootComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerGlobalRootComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;

    new-instance v1, Lcom/android/systemui/dagger/GlobalModule;

    invoke-direct {v1}, Lcom/android/systemui/dagger/GlobalModule;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent;-><init>(Lcom/android/systemui/dagger/GlobalModule;Landroid/content/Context;Lcom/android/systemui/dagger/DaggerGlobalRootComponent$1;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;
    .locals 0

    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/dagger/DaggerGlobalRootComponent$Builder;

    move-result-object p0

    return-object p0
.end method
