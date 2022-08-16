.class public final Lcom/google/android/systemui/titan/SystemUITitanFactory;
.super Lcom/google/android/systemui/SystemUIGoogleFactory;
.source "SystemUITitanFactory.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/SystemUIGoogleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildGlobalRootComponent(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    invoke-static {}, Lcom/google/android/systemui/titan/DaggerTitanGlobalRootComponent;->builder()Lcom/google/android/systemui/titan/TitanGlobalRootComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/GlobalRootComponent;

    move-result-object p0

    return-object p0
.end method
