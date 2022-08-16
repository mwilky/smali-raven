.class public interface abstract Lcom/android/systemui/dreams/dagger/DreamOverlayComponent;
.super Ljava/lang/Object;
.source "DreamOverlayComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dreams/dagger/DreamOverlayComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract getDreamOverlayContainerViewController()Lcom/android/systemui/dreams/DreamOverlayContainerViewController;
.end method

.method public abstract getDreamOverlayTouchMonitor()Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;
.end method

.method public abstract getLifecycleRegistry()Landroidx/lifecycle/LifecycleRegistry;
.end method
