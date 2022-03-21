.class public interface abstract Lcom/android/systemui/dagger/GlobalRootComponent;
.super Ljava/lang/Object;
.source "GlobalRootComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent$Builder;
.end method

.method public abstract getWMComponentBuilder()Lcom/android/systemui/dagger/WMComponent$Builder;
.end method
