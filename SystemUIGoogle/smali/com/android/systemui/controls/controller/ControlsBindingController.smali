.class public interface abstract Lcom/android/systemui/controls/controller/ControlsBindingController;
.super Ljava/lang/Object;
.source "ControlsBindingController.kt"

# interfaces
.implements Lcom/android/systemui/util/UserAwareController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;
    }
.end annotation


# virtual methods
.method public abstract action(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Landroid/service/controls/actions/ControlAction;)V
.end method

.method public abstract bindAndLoad(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)Ljava/lang/Runnable;
.end method

.method public abstract bindAndLoadSuggested(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsBindingController$LoadCallback;)V
.end method

.method public abstract onComponentRemoved(Landroid/content/ComponentName;)V
.end method

.method public abstract subscribe(Lcom/android/systemui/controls/controller/StructureInfo;)V
.end method

.method public abstract unsubscribe()V
.end method
