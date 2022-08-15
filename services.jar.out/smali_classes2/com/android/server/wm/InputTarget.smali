.class public interface abstract Lcom/android/server/wm/InputTarget;
.super Ljava/lang/Object;
.source "InputTarget.java"


# virtual methods
.method public abstract canScreenshotIme()Z
.end method

.method public abstract dumpProto(Landroid/util/proto/ProtoOutputStream;JI)V
.end method

.method public abstract getActivityRecord()Lcom/android/server/wm/ActivityRecord;
.end method

.method public abstract getDisplayContent()Lcom/android/server/wm/DisplayContent;
.end method

.method public abstract getDisplayId()I
.end method

.method public abstract getIWindow()Landroid/view/IWindow;
.end method

.method public abstract getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;
.end method

.method public abstract getPid()I
.end method

.method public abstract getWindowState()Lcom/android/server/wm/WindowState;
.end method

.method public abstract handleTapOutsideFocusInsideSelf()V
.end method

.method public abstract handleTapOutsideFocusOutsideSelf()V
.end method

.method public abstract isInputMethodClientFocus(II)Z
.end method

.method public abstract receiveFocusFromTapOutside()Z
.end method

.method public abstract shouldControlIme()Z
.end method

.method public abstract unfreezeInsetsAfterStartInput()V
.end method
